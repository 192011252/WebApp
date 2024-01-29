from django.contrib import messages
from django.shortcuts import render, redirect
from .models import *
import openai
from django.contrib.sessions.models import Session
# Create your views here.
import logging
from django.http import HttpResponse
from django.template.loader import render_to_string
from weasyprint import HTML

logger = logging.getLogger(__name__)

def edit_home(request):
    details = creator_table.objects.all()
    content = Magazine.objects.all()
    return render(request,'article/edit_home.html',{'d':details, 'c':content})

def edit_content(request,id):
    details = creator_table.objects.all()
    content = Magazine.objects.get(id=id)
    return render(request,'article/content_edit.html',{'d':details, 'c':content})

def edit_save(request):
    if request.method == "POST":
        cont = request.POST["cont"]
        content_id = request.POST["id"]  # Renaming 'id' variable to avoid conflict with 'id' argument
        try:
            content = Magazine.objects.get(id=content_id)
            content.content = cont
            content.save()
            messages.success(request, 'Content updated successfully.')
        except Magazine.DoesNotExist:
            messages.error(request, 'Content not found.')
    return redirect('/creator_index/')



def download_pdf(request, id):
    try:
        content = creator_table.objects.get(id=id)
        gpt_content = Magazine.objects.get(id=id)

        # template_name = 'article/' + content.template + '.html'
        template_name = 'article/download.html'

        if template_name:
            # Get the image URL from the 'UpIma' field in creator_table model
            image_url = content.UpIma.url if hasattr(content, 'UpIma') else None

            # Render the selected HTML template with the updated context
            html_string = render_to_string(
                template_name,
                {'content': content, 'gpt_content': gpt_content, 'image_url': image_url}
            )

            # Generate PDF file from HTML string
            pdf_file = HTML(string=html_string).write_pdf()

            # Creating an HTTP response with the PDF as attachment
            response = HttpResponse(pdf_file, content_type='application/pdf')
            response['Content-Disposition'] = f'attachment; filename="downloaded_file_{id}.pdf"'
            return response

        return HttpResponse("Template not found for the specified content.")

    except creator_table.DoesNotExist:
        return HttpResponse("Creator Table record does not exist.")

    except Magazine.DoesNotExist:
        return HttpResponse("Magazine record does not exist.")

    except Exception as e:
        logger.error(f"Error occurred: {str(e)}")
        return HttpResponse("Error occurred while generating PDF.")

def home(request):
    return render(request,'starter/index.html')

def profile(request):
    return render(request,'starter/profile.html')

def magazine1(request):
    content = get_last_creator_table_record()
    gpt_content = get_last_magazine_record()
    return render(request,'article/magazine3.html', {'content': content, 'gpt_content': gpt_content})

def indivial(request,id):
    content = creator_table.objects.get(id=id)
    gpt_content = Magazine.objects.get(id=id)
    template_name = ''
    if content.template == "magazine1right":
        return render(request, 'article/magazine1right.html', {'content':content,'gpt_content':gpt_content})
    elif content.template == "magazine1left":
        return render(request, 'article/magazine1left.html', {'content':content,'gpt_content':gpt_content})
    elif content.template == "magazine2":
        return render(request, 'article/magazine2.html', {'content':content,'gpt_content':gpt_content})
    elif content.template == "magazine2left":
        return render(request, 'article/magazine2left.html', {'content':content,'gpt_content':gpt_content})
    elif content.template == "magazine2td":
        return render(request, 'article/magazine2td.html', {'content':content,'gpt_content':gpt_content})
    elif content.template == "magazine3":
        return render(request, 'article/magazine3.html', {'content':content,'gpt_content':gpt_content})
    elif content.template == "magazine3left":
        return render(request, 'article/magazine3left.html', {'content':content,'gpt_content':gpt_content})
    elif content.template == "magazine3random":
        return render(request, 'article/magazine3random.html', {'content':content,'gpt_content':gpt_content})


    if template_name:
        # Render the selected HTML template
        html_string = render_to_string(template_name, {'content': content, 'gpt_content': gpt_content})

        # Generate PDF file from HTML string
        pdf_file = HTML(string=html_string).write_pdf()

        # Creating an HTTP response with the PDF as attachment
        response = HttpResponse(pdf_file, content_type='application/pdf')
        response['Content-Disposition'] = f'attachment; filename="downloaded_file_{id}.pdf"'
        return response

        # Handle if no template is found for the content.template value
    return HttpResponse("Template not found for the specified content.")

def chome(request):
    details = creator_table.objects.all()
    content = Magazine.objects.all()
    return render(request,'starter/chome.html',{'d':details,'c':content})

def conh(request):
    details = creator_table.objects.all()
    content = Magazine.objects.all()
    return render(request,'starter/conhome.html',{'d':details,'c':content})
def get_last_creator_table_record():
    try:
        # Use order_by('-id') to select the record with the highest (latest) ID.
        last_record = creator_table.objects.all().order_by('-id')[0]
        return last_record
    except creator_table.DoesNotExist:
        return None
def get_last_magazine_record():
    try:
        # Use order_by('-id') to select the record with the highest (latest) ID.
        last_record = Magazine.objects.all().order_by('-id')[0]
        return last_record
    except Magazine.DoesNotExist:
        return None

def magazine(request):
    content = get_last_creator_table_record()
    gpt_content = get_last_magazine_record()
    if content.template == "magazine1right":
        return render(request, 'article/magazine1right.html', {'content': content, 'gpt_content': gpt_content})
    elif content.template == "magazine1left":
        return render(request, 'article/magazine1left.html', {'content': content, 'gpt_content': gpt_content})
    elif content.template == "magazine2":
        return render(request, 'article/magazine2.html', {'content': content, 'gpt_content': gpt_content})
    elif content.template == "magazine2left":
        return render(request, 'article/magazine2left.html', {'content': content, 'gpt_content': gpt_content})
    elif content.template == "magazine2td":
        return render(request, 'article/magazine2td.html', {'content': content, 'gpt_content': gpt_content})
    elif content.template == "magazine3":
        return render(request, 'article/magazine3.html', {'content': content, 'gpt_content': gpt_content})
    elif content.template == "magazine3left":
        return render(request, 'article/magazine3left.html', {'content': content, 'gpt_content': gpt_content})
    elif content.template == "magazine3random":
        return render(request, 'article/magazine3random.html', {'content':content,'gpt_content':gpt_content})
    else:
        return render(request, 'article/magazine1.html')

def selection(request,id):
    t = template_images.objects.get(id=id)
    template = t.name
    last_record = get_last_creator_table_record()
    id = last_record.id
    creator_table.objects.filter(id=id).update(template=template)
    messages.success(request, 'Sucessfully Inserted template.')
    return redirect('/creator_index/')

def show_template(request):
    last_record = get_last_creator_table_record()
    lr=last_record.NoofIma
    temp = template_images.objects.filter(img_name=lr)
    print(lr)
    return render(request,'selection/select.html',{'last_record':last_record,'temp':temp})
def mag3(request):
    return render(request,'article/magazine3left.html')
def Insert_temp_img(request):
    if request.method=="POST":
        img_name = request.POST["img_name"]
        UpIma = request.FILES["UpIma"]
        template_images(img_name=img_name,UpIma=UpIma).save()
        messages.success(request, 'Sucessfully Inserted Data.')
    return render(request,'article/upload_image.html')

def submit_data(request):
    if request.method == "POST":
        event = request.POST["event"]
        venue = request.POST["venue"]
        event_date = request.POST["event_date"]
        guests = request.POST["guests"]
        extpart = request.POST["extpart"]
        intpart = request.POST["intpart"]
        spepoint = request.POST["spepoint"]
        highofthevent = request.POST["highofthevent"]
        NoofIma = request.POST["NoofIma"]
        noofwords = request.POST["noofwords"]
        UpIma = request.FILES["UpIma"]
        UpIma1 = request.FILES.get("UpIma1", None)
        UpIma2 = request.FILES.get("UpIma2", None)

        # Check if UpIma, UpIma1, and UpIma2 are None and set them to None explicitly
        UpIma = None if UpIma is None else UpIma
        UpIma1 = None if UpIma1 is None else UpIma1
        UpIma2 = None if UpIma2 is None else UpIma2

        creator_table(event=event, venue=venue, event_date=event_date, guests=guests, extpart=extpart, intpart=intpart,
                      spepoint=spepoint, highofthevent=highofthevent, NoofIma=NoofIma, UpIma=UpIma, UpIma1=UpIma1, UpIma2=UpIma2).save()


        # Create a 'prom' variable based on the form data
        prom = f"Write an article for minimum {noofwords} words on this details Event: {event}\nVenue: {venue}\nEvent Date: {event_date}\nGuests: {guests}\nExternal Participants: {extpart}\nInternal Participants: {intpart}\nSpecial Points: {spepoint}\nHighlight of the Event: {highofthevent}"
        # Redirect to the chatbot view and pass the 'prom' variable
        return redirect('chatbot', prom=prom)
    return render(request, 'table.html')


openai.api_key = "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"
def chatbot(request, prom):
    # Now, use the 'prom' variable as the prompt for the chatbot
    model_engine = "text-davinci-003"
    completion = openai.Completion.create(
        engine=model_engine,
        prompt=prom,  # Use the 'prom' variable as the prompt
        max_tokens=1024,
        n=1,
        stop=None,
        temperature=0.5,
    )
    response = completion.choices[0].text

    magazine_instance = Magazine(content=response)
    magazine_instance.save()
    messages.success(request, 'Sucessfully Generated Data.')
    return render(request, 'bot/chatbot_response.html', {'response': response, 'prom': prom})

def csignup(request):
    if request.method == "POST":
        name = request.POST["name"]
        email = request.POST["email"]
        phone = request.POST["phone"]
        password = request.POST["password"]

        creator_details(name=name, email=email, phone=phone, password=password).save()
        messages.success(request, 'Sucessfully Signed Up.')
        return redirect('/creator_login/')
    return render(request,'creator sign.html')

def clogin(request):
    if request.method == 'POST':
        email = request.POST["email"]
        password = request.POST["password"]
        user = creator_details.objects.get(email=email)

        try:
            emp =creator_details.objects.get(email=email, password=password)
            messages.success(request, 'You Have Logged In')
            request.session['ccd'] = emp.email
            return redirect('/creator_index/')
        except:
            messages.success(request, 'Invalid Email And Password')
            return redirect('/')

    return render(request,'creator login.html')

def clogout(request):
    if 'ccd' in request.session:
        request.session.pop('ccd', None)
        messages.success(request, 'Logout Successfully')
        return redirect('/')
    else:
        messages.success(request, 'Session Logged Out')
        return redirect('/')