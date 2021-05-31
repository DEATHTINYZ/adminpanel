"""backadmin URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.contrib.auth import logout
from django.urls import path
from backadmin import views

urlpatterns = [
    path('admin/', admin.site.urls),

    ## USER ##
    path('user_std_parents/', views.user_std_parents, name="user-page"),
    path('user_view_std_parents/<int:id>/', views.user_view_std_parents),

    path('user_driver/', views.user_driver),
    path('user_view_driver/<int:id>/', views.user_view_driver),

    path('user_school/', views.user_school),
    path('user_view_school/<int:id>/', views.user_view_school),


    ## LOGIN ADMIN/USER ##
    path('', views.loginpage, name="login"),
    path('logout/', views.logoutuser, name="logout"),
    path('index/', views.index, name="index"),


    ## ADMIN ##
    path('std_parents/', views.std_parents),
    path('std_parents_adds/', views.std_parents_adds),
    path('delete_std_parents/<int:id>/', views.delete_std_parents),
    path('edit_std_parents/<int:id>/', views.edit_std_parents),
    path('update_std_parents/<int:id>', views.update_std_parents),
    path('view_std_parents/<int:id>/', views.view_std_parents),

    path('driver/', views.driver),
    path('driver_adds/', views.driver_adds),
    path('delete_driver/<int:id>/', views.delete_driver),
    path('edit_driver/<int:id>/', views.edit_driver),
    path('update_driver/<int:id>', views.update_driver),
    path('view_driver/<int:id>/', views.view_driver),

    path('school/', views.school),
    path('school_adds/', views.school_adds),
    path('delete_school/<int:id>/', views.delete_school),
    path('edit_school/<int:id>/', views.edit_school),
    path('update_school/<int:id>', views.update_school),
    path('view_school/<int:id>/', views.view_school),
    
]
