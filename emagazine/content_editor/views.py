from django.contrib import messages
from django.shortcuts import render, redirect
from .models import *
from content_creator.models import *
from content_editor.models import *
# Create your views here.
def home(request):
    return render(request,'starter/index.html')

def history(request):
    h = creator_table.objects.all()
    return render(request,'histroy.html',{'h':h})
def edit_content(request,id):
    d = Magazine.objects.get(id=id)
    if request.method == 'POST':
        event = request.POST.get('event')
        d.content = event
        d.save()
        return redirect('/editor_table/')
    return render(request,'ectable.html',{'d':d})
def edit_details(request,id):
    d = creator_table.objects.get(id=id)
    if request.method == 'POST':
        # Extract form data from the request
        event = request.POST.get('event')
        venue = request.POST.get('venue')

        guests = request.POST.get('guests')
        extpart = request.POST.get('extpart')
        intpart = request.POST.get('intpart')
        spepoint = request.POST.get('spepoint')
        highofthevent = request.POST.get('highofthevent')

        # Update the object with the new data
        d.event = event
        d.venue = venue
        d.guests = guests
        d.extpart = extpart
        d.intpart = intpart
        d.spepoint = spepoint
        d.highofthevent = highofthevent
        d.save()
        return redirect('/editor_table/')
    return render(request,'etable.html',{'d':d})

def editor(request):
    details = creator_table.objects.all()
    content = Magazine.objects.all()
    combined_data = zip(details, content)
    return render(request,'starter/editor.html',{'combined_data':combined_data})
def ehome(request):
    details = creator_table.objects.all()
    content = Magazine.objects.all()
    return render(request,'starter/ehome.html',{'d':details,'c':content})
def esignup(request):
    if request.method == "POST":
        name = request.POST["name"]
        email = request.POST["email"]
        phone = request.POST["phone"]
        password = request.POST["password"]

        editor_details(name=name, email=email, phone=phone, password=password).save()
        messages.success(request, 'Sucessfully Signed Up.')
        return redirect('/editor_login/')
    return render(request,'starter/editor signup.html')

def elogin(request):
    if request.method == 'POST':
        email = request.POST["email"]
        password = request.POST["password"]
        user = editor_details.objects.get(email=email)

        try:
            emp =editor_details.objects.get(email=email, password=password)
            messages.success(request, 'You Have Logged In')
            request.session['ccd'] = emp.email
            return redirect('/editor_index/')
        except:
            messages.success(request, 'Invalid Email And Password')
            return redirect('/')

    return render(request,'editor login.html')

def elogout(request):
    if 'ccd' in request.session:
        request.session.pop('ccd', None)
        messages.success(request, 'Logout Successfully')
        return redirect('/')
    else:
        messages.success(request, 'Session Logged Out')
        return redirect('/')