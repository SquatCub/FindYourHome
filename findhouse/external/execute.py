from datetime import datetime
from pyswip import Prolog
import sys
import json


consult = f"findCasa(C,{str(sys.argv[1])},{str(sys.argv[2])},PCServicios,{str(sys.argv[3])},{str(sys.argv[4])},PCHabitaciones,{str(sys.argv[5])},{str(sys.argv[6])},PCPay,{str(sys.argv[7])},PR,{str(sys.argv[8])},Loc,Con)."


prolog = Prolog()
prolog.consult("findhouse/external/rules.pl")

data = []
i = 1


def serialize(id):
	return {
		"id": id,
	}


for casa in prolog.query(consult):
	datos = serialize(i)
	i += 1
	# ----------------
	datos['casaName'] = casa['C'].capitalize().replace('_', ' ')
	# ----------------
	datos['precio'] = casa['PR']
	# ----------------
	datos['locacion'] = casa['Loc'].capitalize()
	# ----------------
	datos['contacto'] = casa['Con']
	# ----------------
	percent = casa['PCServicios']
	datos['promServ'] = "{:.1f}".format(percent)
	# ----------------
	percent = casa['PCHabitaciones']
	datos['promHab'] = "{:.1f}".format(percent)
	# ----------------
	percent = casa['PCPay']
	datos['promPayment'] = "{:.1f}".format(percent)
	# ----------------
	data.append(datos)


with open('findhouse/external/result.json', 'w') as jsonFile:
    json.dump(data, jsonFile)
    jsonFile.close()