from django.urls import path
from .import views

urlpatterns=[
    path('',views.home),
    path('editor_signup/', views.esignup),
    path('editor_login/', views.elogin),
    path('editor_index/', views.ehome),
    path('editor_logout/',views.elogout),
    path('editor_table/',views.editor),
    path('e_t/<int:id>/',views.edit_details),
    path('e_c/<int:id>/',views.edit_content),
    path('hist/',views.history)

    ]