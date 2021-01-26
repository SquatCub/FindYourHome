from datetime import datetime
from pyswip import Prolog
import sys
import json


consult = f"findCasa(C,{str(sys.argv[1])},{str(sys.argv[2])},PCServicios,{str(sys.argv[3])},{str(sys.argv[4])},PCHabitaciones,{str(sys.argv[5])},{str(sys.argv[6])},PCPay,{str(sys.argv[7])},PR,{str(sys.argv[8])},Loc)."


prolog = Prolog()
prolog.consult("findhouse/external/rules.pl")
data = {}
data['data'] = []
i = 1


def serialize(id):
	return {
		"id": id,
	}


for casa in prolog.query(consult):
	dataCasa = serialize(i)
	i += 1
	# ----------------
	dataCasa['casaName'] = casa['C'].capitalize().replace('_', ' ')
	# ----------------
	dataCasa['precio'] = casa['PR']
	# ----------------
	dataCasa['locacion'] = casa['Loc'].capitalize()
	# ----------------
	percent = casa['PCServicios']
	dataCasa['promServ'] = "{:.1f}".format(percent)
	# ----------------
	percent = casa['PCHabitaciones']
	dataCasa['promHab'] = "{:.1f}".format(percent)
	# ----------------
	percent = casa['PCPay']
	dataCasa['promPayment'] = "{:.1f}".format(percent)
	# ----------------
	data['data'].append(dataCasa)


with open('findhouse/external/result.json', 'w') as jsonFile:
    json.dump(data, jsonFile)
    jsonFile.close()