from django.urls import path
from .import views

urlpatterns=[
    path('',views.home),
    path('creator_signup/', views.csignup),
    path('creator_login/', views.clogin),
    path('creator_index/', views.chome),
    path('creator_logout/',views.clogout),
    path('c_table/',views.submit_data),
    path('chatbot/<str:prom>/', views.chatbot, name='chatbot'),
    path('article/',views.magazine),
    path('indi/<int:id>/',views.indivial),
    path('settings/',views.profile),
    path('m1/',views.magazine1),
    path('ss/',views.show_template),
    path('up_img/',views.Insert_temp_img),
    path('select/<int:id>/',views.selection),
    path('conhome/',views.conh),
    path('download_pdf/<int:id>/', views.download_pdf, name='download_pdf'),
    path('c_edit/<int:id>/',views.edit_content),
    path('edit_h/',views.edit_home),
    path('edit_s/',views.edit_save),
    path('mag3/',views.mag3)

    ]