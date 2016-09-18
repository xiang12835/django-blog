# Overview
Blog system using django based on python

# Done
1. Django-bootstrap-admin优化后台管理
2. markdown和代码高亮
3. 多说评论
4. aboutme
5. 分类
6. 标签
7. 归档
8. 搜索
9. read more功能
10. RSS功能
11. 分页功能

# Requirements
- python 2.7
- Django==1.7.1
- Markdown
- MySQL-python
- bootstrap-admin

# Usage
    $ cd django_blog
    $ pip install -r requirements.txt  #安装所有依赖
    $ python manage.py makemigrations
    $ python manage.py migrate
    $ python manage.py runserver

    open the website(chrome best) and input
    http://127.0.0.1:8000/