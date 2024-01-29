from django.shortcuts import render,redirect
from .models import *
from content_creator.models import *
from content_editor.models import *
from django.contrib import messages
from django.core.mail import send_mail
# Create your views here.

def home(request):
    return render(request,'starter/index.html')


def data_table(request):
    details = creator_details.objects.all()
    return render(request,'starter/task.html',{'details':details})

def editordata_table(request):
    details = editor_details.objects.all()
    return render(request,'admin/e_task.html',{'details':details})

def assign_task(request):
    if request.method == "POST":
        name = request.POST["name"]
        email = request.POST["email"]
        message = request.POST["message"]
        print(name,email,message)
        send_mail(
            name,
            message,
            'mayeeterlapu@gmail.com',
            [email],
            fail_silently=False,
        )

        messages.info(request, "Assigned Task To Creator")
    return render(request,'admin/assign_task.html')


def admin_email(request):
    return render(request,'starter/admin.html')

def index(request):
    details = creator_table.objects.all()
    content = Magazine.objects.all()
    return render(request,'home.html', {'d':details,'c':content})
def signup(request):
    if request.method == "POST":
        name = request.POST["name"]
        email = request.POST["email"]
        phone = request.POST["phone"]
        password = request.POST["password"]

        admin_details(name=name, email=email, phone=phone, password=password).save()
        messages.success(request, 'Sucessfully Signed Up.')
        return redirect('/admin_login/')
    return render(request,'signup/signup.html')

def login(request):
    if request.method == 'POST':
        email = request.POST["email"]
        password = request.POST["password"]
        user = admin_details.objects.get(email=email)

        try:
            emp =admin_details.objects.get(email=email, password=password)
            messages.success(request, 'You Have Logged In')
            request.session['ccd'] = emp.email
            return redirect('/admin_index/')
        except:
            messages.success(request, 'Invalid Email And Password')
            return redirect('/')

    return render(request,'login/login.html')

def admin_logout(request):
    if 'ccd' in request.session:
        request.session.pop('ccd', None)
        messages.success(request, 'Logout Successfully')
        return redirect('/')
    else:
        messages.success(request, 'Session Logged Out')
        return redirect('/')