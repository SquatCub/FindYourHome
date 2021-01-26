from pyswip import Prolog
from django.core.files.base import ContentFile
from django.core.files.storage import default_storage
from os import system

def response(input):
    servicios = input['servicios']

    PMServicios = input['PMServicios']
    habitaciones = input['habitaciones']
    PMHabitaciones = input['PMHabitaciones']
    payment = input['payment']
    PMPayment = input['PMPayment']
    presupuesto = input['presupuesto']
    Locacion = input['Locacion']
    #print(f"python3 prolog/execute.py {PCServicios} {PMServicios} {habitaciones} {PMHabitaciones} {payment} {PMPayment} {presupuesto} {GustoUbicacion}")

    system(f"python3 findhouse/external/execute.py {servicios} {PMServicios} {habitaciones} {PMHabitaciones} {payment} {PMPayment} {presupuesto} {Locacion}")