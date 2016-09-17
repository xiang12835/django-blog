# coding=utf-8

"""myProject URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.7/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""

from django.conf.urls import url
from django.contrib import admin

urlpatterns = [
    url(r'^admin/', admin.site.urls),
]

from myApp.views import hello, views
urlpatterns += [
    url(r'^hello/', hello),
    url(r'^views/', views),
    url(r'^test/$', 'myApp.views.test'),
]

# blog
from myApp.views import RSSFeed
urlpatterns += [
    url(r'^$', 'myApp.views.home', name='home'),  # 首页
    url(r'^(\d+)/$', 'myApp.views.detail', name='detail'),  # 通过url向views传参 # 详细文章
    url(r'^archives/$', 'myApp.views.archives', name='archives'),  # 归档
    url(r'^aboutme/$', 'myApp.views.about_me', name='about_me'),
    url(r'^category/(\w+)/$', 'myApp.views.search_category', name='search_category'),  # 分类
    url(r'^tag/(\w+)/$', 'myApp.views.search_tag', name='search_tag'),  # 标签
    url(r'^tags/$', 'myApp.views.show_tags', name='show_tags'),  # 显示标签的页面
    url(r'^search/$', 'myApp.views.blog_search', name='blog_search'),  # 搜索
    url(r'^feed/$', RSSFeed(), name="RSS"),  # 新添加的urlconf, 并将name设置为RSS, 方便在模板中使用url
]
