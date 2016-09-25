# coding=utf-8

from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.shortcuts import render_to_response
from myApp.models import Article, Tag, Category
from datetime import datetime
from django.http import Http404

import sys
reload(sys)
sys.setdefaultencoding("utf-8")

# Create your views here.
def hello(request):
    return HttpResponse("Hello world")

def views(request):
    return render_to_response('1.html', {"name": "django"})

def test(request):
    return render(request, 'test.html', {'current_time': datetime.now()})

# HOME
# def home(request):
# 	return HttpResponse("Hello world, Django")

# def home(request):
#     post_list = Article.objects.all()  #获取全部的Article对象
#     return render(request, 'home.html', {'post_list' : post_list})

from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger  # 添加包

def home(request):  # 首页
    posts = Article.objects.all()  # 获取全部的Article对象
    paginator = Paginator(posts, 5)  # 每页显示数目
    page = request.GET.get('page')
    try:
        post_list = paginator.page(page)
    except PageNotAnInteger:
        post_list = paginator.page(1)
    except EmptyPage:
        post_list = paginator.paginator(paginator.num_pages)
    return render(request, 'home.html', {'post_list': post_list})

# DETAIL
# 通过参数来访问数据库资源
# def detail(request,my_args):
# 	post = Article.objects.all()[int(my_args)]
# 	str = ("title=%s,category=%s,date_time=%s,content=%s" % (post.title,post.category,post.date_time,post.content))
# 	return HttpResponse(str)

def archives(request):  # 归档
    try:
        post_list = Article.objects.all()
    except Article.DoesNotExist:
        raise Http404
    return render(request, 'archives.html', {'post_list': post_list, 'error': False})

def article(request, id):  # 文章内容
    try:
        post = Article.objects.get(id=str(id))
        tags = post.tag.all()
    except Article.DoesNotExist:
        raise Http404
    return render(request, 'article.html', {'post': post, 'tags': tags})

def show_categories(request):  # 分类页面
    try:
        category_list = Category.objects.all()
        count = len(category_list)
    except Article.DoesNotExist:
        raise Http404
    return render(request, 'categories.html', {'category_list': category_list, 'count': count})

def search_category(request, category_name):  # 分类
    try:
        category_name = Category.objects.get(name=category_name)
        post_list = category_name.article_set.all()
    except Article.DoesNotExist:
        raise Http404
    return render(request, 'category.html', {'post_list': post_list})

def show_tags(request):  # 标签管理页面
    try:
        tag_list = Tag.objects.all()
        count = len(tag_list)
    except Article.DoesNotExist:
        raise Http404
    return render(request, 'tags.html', {'tag_list': tag_list, 'count': count})

def search_tag(request, tag_name):  # 标签
    try:
        tag = Tag.objects.get(tag_name=tag_name)
        post_list = tag.article_set.all()
    except Article.DoesNotExist:
        raise Http404
    return render(request, 'tag.html', {'post_list': post_list})

def blog_search(request):  # 搜索
    if 's' in request.GET:
        s = request.GET['s']
        if not s:
            return render(request, 'home.html')
        else:
            post_list = Article.objects.filter(title__icontains=s)
            if len(post_list) == 0:
                return render(request, 'archives.html', {'post_list': post_list, 'error': True})
            else:
                return render(request, 'archives.html', {'post_list': post_list, 'error': False})
    return redirect('/')

def about_me(request):
    return render(request, 'aboutme.html')

from django.contrib.syndication.views import Feed  # 注意加入import语句

class RSSFeed(Feed):
    title = "RSS feed - article"
    link = "feeds/posts/"
    description = "RSS feed - blog posts"

    def items(self):
        return Article.objects.order_by('-date_time')

    def item_title(self, item):
        return item.title

    def item_pubdate(self, item):
        return item.date_time

    def item_description(self, item):
        return item.content