from django.urls import path
from .import views

urlpatterns=[
    path('',views.home),
    path('admin_signup/', views.signup),
    path('admin_login/', views.login),
    path('admin_index/', views.index),
    path('admin_logout/',views.admin_logout),
    path('ass_task/',views.assign_task),
    path('task/',views.data_table),
    path('etask/',views.editordata_table),
]
