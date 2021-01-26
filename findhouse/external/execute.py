from datetime import datetime
from pyswip import Prolog
import sys
import json


def serialize(id):
	return {
		"id": id,
		"created_at": datetime.now().strftime("%b %d %y, %I:%M %p")
	}


query = f"findCasa(C,{str(sys.argv[1])},{str(sys.argv[2])},PCServicios,{str(sys.argv[3])},{str(sys.argv[4])},PCHabitaciones,{str(sys.argv[5])},{str(sys.argv[6])},PCPay,{str(sys.argv[7])},PR,{str(sys.argv[8])},Loc)."

#print(query)

prolog = Prolog()
prolog.consult("findhouse/external/rules.pl")
data = {}
dataCasa = {}
data['data'] = []
i = 0
#

for casa in prolog.query(query):
	dataCasa = serialize(i)
	#print(casa.keys())
	if 'C' in casa.keys():
		dataCasa['casa'] = casa['C']

	if 'PCServicios' in casa.keys():
		dataCasa['promedio_servicios'] = casa['PCServicios']

	if 'PCHabitaciones' in casa.keys():
		dataCasa['promedio_habitaciones'] = casa['PCHabitaciones']

	if 'PCPay' in casa.keys():
		dataCasa['promPayment'] = casa['PCPay']

	if 'PR' in casa.keys():
		dataCasa['precio'] = casa['PR']

	if 'Loc' in casa.keys():
		dataCasa['locacion'] = casa['Loc']

	data['data'].append(dataCasa)
	i += 1



#print(data['data'])
# CODE TO WRITE DATA PRLOG TO FORMAT JSON
with open('findhouse/external/result.json', 'w') as jsonFile:
    json.dump(data, jsonFile)
    jsonFile.close()