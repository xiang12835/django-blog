# coding=utf-8

"""myProject URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
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
    # url(r'^hello/', hello),
    # url(r'^views/', views),
    # url(r'^$','myApp.views.home'),
    # url(r'^(\d+)/$','myApp.views.detail',name='detail'),
]

from myApp.views import hello,views
urlpatterns += [
    url(r'^hello/', hello),
    url(r'^views/', views),
]

# 设置url
urlpatterns += [
    url(r'^$','myApp.views.home', name='home'),
]

# 通过url向views传参
urlpatterns += [
    url(r'^(\d+)/$','myApp.views.detail',name='detail'),
]

# template
urlpatterns += [
    url(r'^test/$', 'myApp.views.test'),
]

urlpatterns += [
    url(r'^archives/$', 'myApp.views.archives', name = 'archives'),
]

urlpatterns += [
    url(r'^aboutme/$', 'myApp.views.about_me', name = 'about_me'),
]

urlpatterns += [
    url(r'^tag(?P<tag>\w+)/$', 'myApp.views.search_tag', name = 'search_tag'),
]

urlpatterns += [
    url(r'^search/$','myApp.views.blog_search', name = 'search'),
]

from myApp.views import RSSFeed
urlpatterns += [
    url(r'^feed/$', RSSFeed(), name = "RSS"),  #新添加的urlconf, 并将name设置为RSS, 方便在模板中使用url
]
