from django.shortcuts import render
from . import util
from django.views.decorators.csrf import csrf_exempt

def index(request):
    return render(request, "findhouse/index.html")

@csrf_exempt
def response(request):
    if request.method == "POST":
        list_colonia = request.POST.getlist("colonia")
        colonia = list_colonia[0]

        list_services = request.POST.getlist("services")
        services = "[" +','.join(map(str, list_services)) + "]"

        list_rooms = request.POST.getlist("rooms")
        rooms = "[" +','.join(map(str, list_rooms)) + "]"
        
        list_payment = request.POST.getlist("payment")
        payment = "[" +','.join(map(str, list_payment)) + "]"

        price = request.POST["price"]
        

        query = {}
        query['servicios'] = services
        query['PMServicios'] = "1"
        query['habitaciones'] = rooms
        query['PMHabitaciones'] = "1"
        query['payment'] = payment
        query['PMPayment'] = "1"
        query['presupuesto'] = price
        query['Locacion'] = colonia
        
        #print(services)
        util.response(query)
      
        return render(request, "findhouse/hello.html", {
            "query": query,
        })
    else:    
        return "error"



