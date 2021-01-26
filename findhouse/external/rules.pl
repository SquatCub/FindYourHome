 /* ------------------Casas------------------ */
 /* ----------------------------------------- */
casa(basica_v1).
casa(basica_v2).
casa(basica_v3).
casa(basica_v4).
casa(estandar_v1).
casa(estandar_v2).
casa(estandar_v3).
casa(estandar_v4).
casa(estandar_v5).
casa(estandar_v6).
casa(estandar_v7).
casa(estandar_v8).
casa(premium_v1).
casa(premium_v2).
casa(premium_v3).
casa(premium_v4).

 /* ----------------Colonias----------------- */
 /* ----------------------------------------- */
colonia(basica_v1, ruiz).
colonia(basica_v2, leandro).
colonia(basica_v3, libertad).
colonia(basica_v4, realito).
colonia(estandar_v1, realito).
colonia(estandar_v2, chapultepec).
colonia(estandar_v3, santa).
colonia(estandar_v4, loma).
colonia(estandar_v5, camelinas).
colonia(estandar_v6, santa).
colonia(estandar_v7, chapultepec).
colonia(estandar_v8, loma).
colonia(premium_v1, altozano).
colonia(premium_v2, americas).
colonia(premium_v3, altozano).
colonia(premium_v4, americas).

 /* ----------------Servicios---------------- */
 /* ----------------------------------------- */
servicios(basica_v1, [luz,agua,drenaje]).
servicios(basica_v2, [luz,agua,drenaje,internet]).
servicios(basica_v3, [luz,agua,drenaje,transporte]).
servicios(basica_v4, [luz,agua,drenaje,internet]).
servicios(estandar_v1, [luz,agua,internet,cable,transporte]).
servicios(estandar_v2, [luz,agua,drenaje,transporte,cable,seguridad]).
servicios(estandar_v3, [luz,agua,transporte,internet,cable,seguridad]).
servicios(estandar_v4, [luz,drenaje,transporte,cable,seguridad]).
servicios(estandar_v5, [drenaje,transporte,internet,cable,seguridad]).
servicios(estandar_v6, [luz,agua,drenaje,transporte,internet,cable,seguridad]).
servicios(estandar_v7, [luz,agua,drenaje,internet,limpieza,seguridad]).
servicios(estandar_v8, [luz,agua,drenaje,transporte,limpieza]).
servicios(premium_v1, [luz,agua,drenaje,transporte,internet,cable,limpieza,seguridad]).
servicios(premium_v2, [luz,agua,drenaje,transporte,internet,cable,limpieza,seguridad]).
servicios(premium_v3, [luz,agua,drenaje,transporte,internet,cable,limpieza,seguridad]).
servicios(premium_v4, [luz,agua,drenaje,transporte,internet,cable,limpieza,seguridad]).

 /* --------------Habitaciones--------------- */
 /* ----------------------------------------- */
habitaciones(basica_v1, [sala,cocina]).
habitaciones(basica_v2, [sala,cochera,cocina,wc]).
habitaciones(basica_v3, [sala,cocina,wc]).
habitaciones(basica_v4, [cocina,wc]).
habitaciones(estandar_v1, [sala,cochera,cocina,wc,recamara_extra,patio_de_servicio,lavandería,gym]).
habitaciones(estandar_v2, [sala,cochera,cocina,wc,recamara_extra,patio_de_servicio,lavandería,estudio,gym,cuarto_de_juegos,sala_de_cine]).
habitaciones(estandar_v3, [wc,lavandería]).
habitaciones(estandar_v4, [sala,cochera,cocina,wc,recamara_extra,patio_de_servicio,lavandería,estudio,gym,cuarto_de_juegos,sala_de_cine]).
habitaciones(estandar_v5, [recamara_extra]).
habitaciones(estandar_v6, [sala,cochera,cocina,wc,patio_de_servicio,lavandería,estudio,gym,cuarto_de_juegos,sala_de_cine]).
habitaciones(estandar_v7, [sala,cochera,cocina,wc,recamara_extra,patio_de_servicio,lavandería]).
habitaciones(estandar_v8, [sala,cochera,cocina,wc]).
habitaciones(premium_v1, [cochera,cocina,wc,recamara_extra,patio_de_servicio,gym]).
habitaciones(premium_v2, [sala,cochera,cocina,wc,recamara_extra,patio_de_servicio,lavandería,estudio]).
habitaciones(premium_v3, [sala,cochera,cocina,wc,recamara_extra,patio_de_servicio,lavandería,estudio,gym,cuarto_de_juegos,sala_de_cine]).
habitaciones(premium_v4, [sala,cochera,cocina,lavandería,estudio,gym,cuarto_de_juegos,sala_de_cine]).

 /* ---------------Tipo de pago-------------- */
 /* ----------------------------------------- */
payment(basica_v1, [efectivo,transferencia]).
payment(basica_v2, [transferencia,credito,hipoteca]).
payment(basica_v3, [efectivo]).
payment(basica_v4, [efectivo,transferencia]).
payment(estandar_v1, [efectivo,credito,hipoteca,prestamo]).
payment(estandar_v2, [efectivo,tranferencia,credito,hipoteca,financiamiento]).
payment(estandar_v3, [efectivo,credito,hipoteca,prestamo]).
payment(estandar_v4, [efectivo]).
payment(estandar_v5, [efectivo,tranferencia,credito,hipoteca,financiamiento]).
payment(estandar_v6, [efectivo,tranferencia,credito,hipoteca,financiamiento,prestamo]).
payment(estandar_v7, [efectivo,credito,financiamiento,prestamo]).
payment(estandar_v8, [efectivo,tranferencia,credito,hipoteca,financiamiento,prestamo]).
payment(premium_v1, [credito,hipoteca,financiamiento,prestamo]).
payment(premium_v2, [efectivo,tranferencia,financiamiento,prestamo]).
payment(premium_v3, [efectivo,tranferencia,credito,hipoteca,financiamiento,prestamo]).
payment(premium_v4, [efectivo,credito,hipoteca,prestamo]).

 /* ----------------Precios------------------ */
 /* ----------------------------------------- */
precio(basica_v1, 500000).
precio(basica_v2, 600000).
precio(basica_v3, 700000).
precio(basica_v4, 800000).
precio(estandar_v1, 1000000).
precio(estandar_v2, 1000000).
precio(estandar_v3, 1100000).
precio(estandar_v4, 1120000).
precio(estandar_v5, 1300000).
precio(estandar_v6, 1350000).
precio(estandar_v7, 1400000).
precio(estandar_v8, 1500000).
precio(premium_v1, 2200000).
precio(premium_v2, 2230000).
precio(premium_v3, 2400000).
precio(premium_v4, 2500000).


 /* -----------------Logica------------------ */
 /* ----------------------------------------- */
largo([],0).
largo([_|T],N):-largo(T,N0), N is N0 + 1.

member(X,[X|_]).
member(X,[_|T]):-member(X,T).

co([],_,0).
co([X|T],L2,C):-member(X,L2),co(T,L2,C2),C is C2 + 1.
co([X|T],L2,C):-not(member(X,L2)),co(T,L2,C2),C is C2.

 /* ----------------Funcion------------------ */
 /* ----------------------------------------- */
findCasa(C,S,PMServicios,PCServicios,H,PMHabitaciones,PCHabitaciones,M,PMPayment,PCPayment,Presupuesto,Precio,Locacion,U):-casa(C),
				servicios(C,CS),
				largo(CS,LargoA),largo(S,LargoB),
				NGambos is LargoA + LargoB,
				Prom is NGambos / 2,
				co(CS,S,Coincidencias),
				PCServicios is ((Coincidencias/Prom)*100),
				PCServicios>=PMServicios,
				habitaciones(C,CH),
				largo(CH,LargoAH),largo(H,LargoBH),
				NGambosH is LargoAH + LargoBH,
				PromH is NGambosH / 2,
				co(CH,H,CoincidenciasH),
				PCHabitaciones is ((CoincidenciasH/PromH)*100),
				PCHabitaciones>=PMHabitaciones,
				payment(C,CM),
				largo(CM,LargoAM),largo(M,LargoBM),
				NGambosM is LargoAM + LargoBM,
				PromM is NGambosM / 2,
				co(CM,M,CoincidenciasM),
				PCPayment is ((CoincidenciasM/PromM)*100),
				PCPayment>=PMPayment,
				precio(C,PrecioCasa),
				Precio is (PrecioCasa*1),
				Presupuesto>=Precio,
				colonia(C,Locacion),
				U = Locacion.

