# Overview
Blog system using django and pure based on python

# Done
1. Django-bootstrap-admin优化后台管理, Pure做前端
2. markdown和代码高亮
3. 多说评论
4. 分类
5. 标签
6. 归档
7. 搜索
8. read more功能
9. RSS功能
10. 分页功能
11. aboutme
12. CV

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