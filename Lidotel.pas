Program Lidotel;
//----------------------------------------------------------------------------------------------------------------------------------//
Uses crt;
//----------------------------------------------------------------------------------------------------------------------------------//
var
Individual : array[1..1000] of record
nombre: string[150];
cedula: string[50];
telefono: string[50];
email: string[50];
edad: string[100];
end;
//----------------------------------------------------------------------------------------------------------------------------------//
var
acompanado : array[1..1000] of record
nombre: string[150];
cedula: string[50];
telefono: string[50];
email: string[50];
edad: string[100];
end;
//----------------------------------------------------------------------------------------------------------------------------------//
var
Grupo_Familia : array[1..1000] of record
nombre: string[150];
cedula: string[50];
telefono: string[50];
email: string[50];
edad: string[100];
end;
//----------------------------------------------------------------------------------------------------------------------------------//
var
cantidad: integer;
cantidad2: integer;
cantidad3: integer;
adultos: integer;
ninos: integer;
adultos_ninos: integer;
opcion: integer;
i_grupo : integer;
i: integer;
confir: string;
dias: integer;
//----------------------------------------------------------------------------------------------------------------------------------//
var
pago,vuelto:integer; { actualizacion hoy }
habitacion: integer;
habitacion_texto: string;
//----------------------------------------------------------------------------------------------------------------------------------//
{PROCESOS DE COLOR}

{Color Verde}
procedure VERDE;
begin
textcolor(lightgreen);
end;
{Color Verde}

{Color Rojo}
procedure ROJO;
begin
textcolor(red);
end;
{Color Rojo}
	
{Color Blanco}
procedure Blanco;
begin
textcolor(white);
end;
{Color Blanco}

		{FIN DE PROCESOS DE COLOR}
//----------------------------------------------------------------------------------------------------------------------------------//
		
procedure cobre;
begin
     
         if pago > habitacion then begin
		vuelto := pago-habitacion;
		blanco; write('    |Estas dando dinero de mas, se te devolveran '); verde; writeln(vuelto,'$');
		blanco; writeln('    |||||||||||||||||||||||||||||||||||||||||||||||||||||||'); 

		end;

			if pago < habitacion then  begin
			repeat
			if pago < habitacion then   blanco;   write('    |Te falta dinero, exactamente ');rojo;writeln(habitacion-pago,'$');
			                     blanco; write('    |Recuerda que debes pagar exactamente: ');verde; writeln(habitacion,'$');
			blanco;  write('    |Ingrese el dinero aqui: '); verde; readln(pago);
			blanco;writeln('    |||||||||||||||||||||||||||||||||||||||||||||||||||||||'); 
			until pago >= habitacion;
			if pago > habitacion then begin
		    vuelto := pago-habitacion;
		    write('    |Estas dando dinero de mas, se te devolveran '); verde; writeln(vuelto,'$');
		    blanco; writeln('    |||||||||||||||||||||||||||||||||||||||||||||||||||||||'); 
			end;
			end;
end;
//----------------------------------------------------------------------------------------------------------------------------------//
BEGIN { INICIO DEL PROGRAMA }
//----------------------------------------------------------------------------------------------------------------------------------//
cantidad:= 0;
cantidad2:= 0;
cantidad3:= 0;
habitacion := 0;

repeat

writeln('|====================================|');
Writeln('|             BIENVENIDO A           |');
writeln('|               LIDOTEL              |');
writeln('|------------------------------------|');
Writeln('|            MENU PRINCIPAL          |');
writeln('|------------------------------------|');
writeln('|(1) Nuevo Ingreso                   |');
writeln('|(2) Ver todos los ingresos          |');
writeln('|(0) Salir del menu                  |');
writeln('|====================================|');
  write('|---> ');readln(opcion);
  While (opcion <> 1) and (opcion <> 2) and (opcion <> 0) do 
  begin
  writeln('|====================================|');
  WRITEln('|   Selecciona una opcion correcta   |');
  writeln('|====================================|');
  write('|---> ');readln(opcion);
  end;


case opcion of

//----------------------------------------------------------------------------------------------------------------------------------//
1: BEGIN { INCIO DEL NUEVO INGRESO }
clrscr;

writeln('|====================================|');
Writeln('|  CUAL SERA TU TIPO DE RESERVASION? |');
writeln('|------------------------------------|');
writeln('|(1) Individual                      |');
writeln('|(2) Acompanado                      |');
writeln('|(3) Grupo/Familia                   |');
writeln('|====================================|');
  write('|---> ');readln(opcion);
   While (opcion <> 1) and (opcion <> 2) and (opcion <> 3) do
   begin
    writeln('|====================================|');
  WRITEln('|   Selecciona una opcion correcta   |');
  writeln('|====================================|');
  write('|---> ');readln(opcion);
  end;
//----------------------------------------------------------------------------------------------------------------------------------//
case opcion of  { CASE DEL TIPO DE RESERVASION }
//----------------------------------------------------------------------------------------------------------------------------------//
1: begin if cantidad < 1000 then { OPCION 1 INDIVIDUAL }
begin 
cantidad:= cantidad + 1;
repeat
clrscr;
writeln('|====================================|');
writeln('|          (1) Individual            |');
writeln('|====================================|');
writeln;
writeln('|=================================================|');
writeln('|Dime el nombre y el apellido de la persona ',cantidad);
writeln('|=================================================|');
  write('|---> '); readln(Individual[cantidad].nombre);
  until ((Individual[cantidad].nombre) <> '');
  
  begin
  repeat
    clrscr;
writeln('|====================================|');
writeln('|Dime la cedula de la persona ', cantidad);
writeln('|====================================|');
  write('|---> '); readln(Individual[cantidad].cedula);
  until ((Individual[cantidad].cedula) <> '');
  end;

begin
repeat
  clrscr;
writeln('|====================================|');
writeln('|Dime el e-mail de la persona ', cantidad);
writeln('|====================================|');
  write('|---> '); readln(Individual[cantidad].email);
  until ((Individual[cantidad].email) <> '');
  end;
  
  begin
  repeat
    clrscr;
writeln('|=================================================|');
writeln('|Dime el numero de telefono de la persona  ', cantidad);
writeln('|=================================================|');
  write('|---> '); readln(Individual[cantidad].telefono);
  until ((Individual[cantidad].telefono) <> '');
  end;
  
  begin
  repeat
  clrscr;
writeln('|====================================|');
writeln('|Dime la edad de la persona ', cantidad);
writeln('|====================================|');
  write('|---> '); readln(Individual[cantidad].edad);
  clrscr;
  until ((Individual[cantidad].edad) <> '');
end;

clrscr;
begin

writeln('|====================================|');
Writeln('|    Cuantos dias te hospedaras?     |');
Writeln('|------------------------------------|');
readln(dias);
clrscr;
writeln('|====================================|');
Writeln('|        Que Habitacion deseas?      |');
Writeln('|------------------------------------|');
Writeln('|(1) Family Room 200$                |');
Writeln('|(2) Sencilla    60$                 |');
Writeln('|(3) Doble       120$                |');
Writeln('|(4) Suite       300$                |');
writeln('|====================================|');
Write('----> '); readln(opcion);
while (opcion <> 1) and (opcion <> 2) and (opcion <> 3) and (opcion <> 4) do 
   begin
    writeln('|====================================|');
  WRITEln('|   Selecciona una opcion correcta   |');
  writeln('|====================================|');
  write('|---> ');readln(opcion);
  end;

case Opcion of
1: begin
clrscr;
habitacion := dias * 200;
writeln('|==========================================================================================|');
Writeln('|                       Has seleccionado la habitacion Family Room                         |');
writeln('|==========================================================================================|');
Writeln('|Calidad de Habitacion:                                                                    |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Calida y confortable habitacian decorada con un estilo vanguardista, 100% libre de humo,  |');
Writeln('|Cama Lidotel Royal King,con reloj despertador, TV 32" HD pasma con cable, bano con ducha, |');
Writeln('|Cafetera electrica, nevera ejecutiva, caja electronica de seguridad y secador de cabello, |');
Writeln('|Armario adicional amplio, una habitacion separada con dos camas full, bano con cucha.     |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Incluye:                                                                                  |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Desayuno Beffet en el Restaurant Le Noveau, acceso inalambrico a Internet (WIFI), Business|');
Writeln('|Center, uso de nuestra exclusiva piscina, acceso a nuestro gimnasio, sillas y toldos en la|');
Writeln('|Playa, kit de vanidades y ninos de 0 a 2 anos sin recargos.                               |');
writeln('|==========================================================================================|');
writeln('|Para confirmar esta habitacion presione cualquier tecla                                   |');
writeln('|------------------------------------------------------------------------------------------|');
write('----> ');
readln(confir);
clrscr;
end; {END DE LA HABITACION 1}

2: begin
clrscr;
habitacion := dias * 60;
writeln('|==========================================================================================|');
Writeln('|                         Has seleccionado la habitacion Sencilla                          |');
writeln('|==========================================================================================|');
Writeln('|Calidad de Habitacion:                                                                    |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Amplia y confortable habitacion decorada con un estilo vanguardista, cama Lidotel Royal   |');
Writeln('|King con sabanas de algodon egipcio, soporte para iPod con reloj despertador, TV 32" HD   |');
Writeln('|Plasma con cable, bano con ducha, cafetera electrica, nevera ejecutiva, caja electronica  |');
Writeln('|de seguridad y secador de cabello.                                                        |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Incluye:                                                                                  |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Desayuno Buffet en Restaurant Le Nouveau, acceso inalambrico a Internet (WIFI),acceso a   |');
Writeln('|las instalaciones del Business Center, uso de nuestra exclusiva piscina, acceso a nuestro |');
Writeln('|moderno gimnasio y Kit de vanidades. Ninos de 0 a 2 anos sin recargos.|');
writeln('|==========================================================================================|');
writeln('|Para confirmar esta habitacion presione cualquier tecla                                   |');
writeln('|------------------------------------------------------------------------------------------|');
write('----> ');
readln(confir);
clrscr;
end; {end de la habitacion 2}

3: begin
clrscr;
habitacion := dias * 120;
writeln('|==========================================================================================|');
Writeln('|                           Has seleccionado la habitacion Doble                           |');
writeln('|==========================================================================================|');
Writeln('|Calidad de Habitacion:                                                                    |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Amplia y confortable habitacion decorada con un estilo vanguardista, Dos Camas Lidotel    |');
Writeln('|Full con sabanas de algodon egipcio, soporte para iPod con reloj despertador, TV 32" HD   |');
Writeln('|Plasma con cable, bano con ducha, cafetera electrica, nevera ejecutiva, caja electronica  |');
Writeln('|de seguridad secador de cabello.                                                          |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Incluye:                                                                                  |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Desayuno Buffet en el Restaurant Le Nouveau, acceso inalambrico a Internet (WIFI), acceso |');
Writeln('|a las instalaciones del Business Center, uso de nuestra exclusiva piscina, acceso a       |');
Writeln('|nuestro moderno gimnasio y Kit de vanidades. Niños de 0 a 2 años sin recargos.            |');
writeln('|==========================================================================================|');
writeln('|Para confirmar esta habitacion presione cualquier tecla                                   |');
writeln('|------------------------------------------------------------------------------------------|');
write('----> ');
readln(confir);
clrscr;
end;{end de la habitacion 3}

4: begin
clrscr;
habitacion := dias * 300;
writeln('|==========================================================================================|');
Writeln('|                           Has seleccionado la habitacion SUITE                           |');
writeln('|==========================================================================================|');
Writeln('|Calidad de Habitacion:                                                                    |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Calida y confortable habitacion decorada con un estilo vanguardista, 100% libre de humo,  |');
Writeln('|Cama Lidotel Royal King, con reloj despertador, TV 32" HD Plasma con cable, 2 banos con   |');
Writeln('|ducha, cafetera electrica, nevera ejecutiva, caja electronica de seguridad y secador de   |');
Writeln('|cabello, armario adicional amplio y area separada con 2 sofa-cama individuales.           |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Incluye:                                                                                  |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Desayuno Buffet en el Restaurant Le Nouveau, acceso inalambrico a Internet (WIFI),        |');
Writeln('|Business Center, uso de nuestra exclusiva piscina, acceso a nuestro gimnasio, sillas y    |');
Writeln('|toldos en la playa, kit de vanidades y ninos de 0 a 2 anos sin recargos.                  |');
writeln('|==========================================================================================|');
writeln('|Para confirmar esta habitacion presione cualquier tecla                                   |');
writeln('|------------------------------------------------------------------------------------------|');
write('----> ');
readln(confir);
clrscr;
end;{end de la habitacion 4}



end;

writeln('    ||||||||||||||||||||||||||||||||||||||||||||||||||||||');												   
writeln('    |                    MONTO A PAGAR                   |');
writeln('    ||||||||||||||||||||||||||||||||||||||||||||||||||||||'); 
verde; writeln('                            ',habitacion,'$');
blanco; writeln('    |||||||||||||||||||||||||||||||||||||||||||||||||||||||'); 
        writeln('    | Por favor ingrese el dinero para realizar su compra |');
          write('    |||||||||||||||||||||||||||||||||||||||||||||||||||||||',' >>> '); verde; readln(pago);
                                                                                               cobre;
        verde; write('    COMPRA EXITOSA '); blanco; writeln('PARA CONTINUAR POR FAVOR PRESIONE CUALQUIER LETRA');
        readkey;
        clrscr;
 if habitacion = 200 then habitacion_texto := 'FAMILY ROOM';
  if habitacion = 60 then habitacion_texto := 'SENCILLA';
   if habitacion = 120 then habitacion_texto := 'DOBLE';
    if habitacion = 300 then habitacion_texto := 'SUITE';
 writeln('    |-------------------------------------|');
 writeln('    |---------------FACTURA---------------|');
 writeln('    |Datos del Cliente                    |');  
 writeln('    |Nombre: ',(Individual[cantidad].nombre));
 writeln('    |Cedula: ',(Individual[cantidad].cedula));   
 writeln('    |Email: ',(Individual[cantidad].email));  
 writeln('    |Telefono: ',(Individual[cantidad].telefono));
 writeln('    |Habitacion :', habitacion_texto);
 writeln('    |Monto: ', habitacion,'$');
 writeln('    |-------------------------------------|');
 writeln('    |Nombre Del Cajero: Eliot             |');
 writeln('    |-------------------------------------|');
 
 if habitacion = 200 then (Individual[cantidad].nombre) := (Individual[cantidad].nombre)+ ' | Habitacion: FAMILY ROOM|';
  if habitacion = 60 then (Individual[cantidad].nombre) := (Individual[cantidad].nombre)+ ' | Habitacion: SENCILLA|';
   if habitacion = 120 then (Individual[cantidad].nombre) := (Individual[cantidad].nombre)+ ' | Habitacion: DOBLE|';
    if habitacion = 300 then (Individual[cantidad].nombre) := (Individual[cantidad].nombre)+ ' | Habitacion: SUITE|';
 
writeln;
write(' Presioan una tecla para continuar '); readkey;
clrscr;

end; {END DE LAS HABITACIONES}


end

else
writeln('Base de datos llena');
end; { End de la opcion 1 INDIVIDUAL }
//----------------------------------------------------------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------------------------------------------------------//
2: begin if cantidad2 < 1000 then { OPCION 2 ACOMPANADO }
begin 
clrscr;
cantidad2:= cantidad2 + 1;
repeat
clrscr;
writeln('|====================================|');
writeln('|          (2) Acompanado            |');
writeln('|====================================|');
writeln;
writeln('|=================================================|');
writeln('|Dime el nombre y el apellido de la persona ',cantidad2);
writeln('|=================================================|');
  write('|---> '); readln(acompanado[cantidad2].nombre);
  until ((acompanado[cantidad2].nombre) <> '');
  
  begin
  repeat
  clrscr;
writeln('|====================================|');
writeln('|Dime la cedula de la persona ', cantidad2);
writeln('|====================================|');
  write('|---> '); readln(acompanado[cantidad2].cedula);
  until ((acompanado[cantidad2].cedula) <> '');
  end;

begin
repeat
clrscr;
writeln('|====================================|');
writeln('|Dime el e-mail de la persona ', cantidad2);
writeln('|====================================|');
  write('|---> '); readln(acompanado[cantidad2].email);
  until ((acompanado[cantidad2].email) <> '');
  end;
 
begin
repeat
clrscr;
writeln('|=================================================|');
writeln('|Dime el numero de telefono de la persona  ', cantidad2);
writeln('|=================================================|');
  write('|---> '); readln(acompanado[cantidad2].telefono);
  until ((acompanado[cantidad2].telefono) <> '');
  end;

begin
repeat
clrscr;
writeln('|====================================|');
writeln('|Dime la edad de la persona ', cantidad2);
writeln('|====================================|');
  write('|---> '); readln(acompanado[cantidad2].edad);
  until ((acompanado[cantidad2].edad) <> '');
  end;
  
writeln;
clrscr;

  cantidad2:= cantidad2 + 1;
  repeat
  clrscr;
writeln('|====================================|');
writeln('|          (2) Acompanado            |');
writeln('|====================================|');
writeln;
writeln('|=================================================|');
writeln('|Dime el nombre y el apellido de la persona ',cantidad2);
writeln('|=================================================|');
  write('|---> '); readln(acompanado[cantidad2].nombre);
  until ((acompanado[cantidad2].nombre) <> '');
  
  begin
  repeat
  clrscr;
writeln('|====================================|');
writeln('|Dime la cedula de la persona ', cantidad2);
writeln('|====================================|');
  write('|---> '); readln(acompanado[cantidad2].cedula);
  until ((acompanado[cantidad2].cedula) <> '');
  end;

begin
repeat
clrscr;
writeln('|====================================|');
writeln('|Dime el e-mail de la persona ', cantidad2);
writeln('|====================================|');
  write('|---> '); readln(acompanado[cantidad2].email);
  until ((acompanado[cantidad2].email) <> '');
  end;
  
  begin
  repeat
  clrscr;
writeln('|=================================================|');
writeln('|Dime el numero de telefono de la persona  ', cantidad2);
writeln('|=================================================|');
  write('|---> '); readln(acompanado[cantidad2].telefono);
  until ((acompanado[cantidad2].telefono) <> '');
  end;

begin
repeat
clrscr;
writeln('|====================================|');
writeln('|Dime la edad de la persona ', cantidad2);
writeln('|====================================|');
  write('|---> '); readln(acompanado[cantidad2].edad);
clrscr;
until ((acompanado[cantidad2].edad) <> '');
end; {end de la edad de la persona}
clrscr;
begin
writeln('|====================================|');
Writeln('|    Cuantos dias te hospedaras?     |');
Writeln('|------------------------------------|');
readln(dias);
clrscr;
writeln('|====================================|');
Writeln('|        Que Habitacion deseas?      |');
Writeln('|------------------------------------|');
Writeln('|(1) Family Room 200$                |');
Writeln('|(2) Sencilla    60$                 |');
Writeln('|(3) Doble       120$                |');
Writeln('|(4) Suite       300$                |');
writeln('|====================================|');
Write('----> '); readln(opcion);
while (opcion <> 1) and (opcion <> 2) and (opcion <> 3) and (opcion <> 4) do 
   begin
    writeln('|====================================|');
  WRITEln('|   Selecciona una opcion correcta   |');
  writeln('|====================================|');
  write('|---> ');readln(opcion);
  end;

case Opcion of
1: begin
clrscr;
habitacion := dias * 200;
writeln('|==========================================================================================|');
Writeln('|                       Has seleccionado la habitacion Family Room                         |');
writeln('|==========================================================================================|');
Writeln('|Calidad de Habitacion:                                                                    |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Calida y confortable habitacian decorada con un estilo vanguardista, 100% libre de humo,  |');
Writeln('|Cama Lidotel Royal King,con reloj despertador, TV 32" HD pasma con cable, bano con ducha, |');
Writeln('|Cafetera electrica, nevera ejecutiva, caja electronica de seguridad y secador de cabello, |');
Writeln('|Armario adicional amplio, una habitacion separada con dos camas full, bano con cucha.     |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Incluye:                                                                                  |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Desayuno Beffet en el Restaurant Le Noveau, acceso inalambrico a Internet (WIFI), Business|');
Writeln('|Center, uso de nuestra exclusiva piscina, acceso a nuestro gimnasio, sillas y toldos en la|');
Writeln('|Playa, kit de vanidades y ninos de 0 a 2 anos sin recargos.                               |');
writeln('|==========================================================================================|');
writeln('|Para confirmar esta habitacion presione cualquier tecla                                   |');
writeln('|------------------------------------------------------------------------------------------|');
write('----> ');
readln(confir);
clrscr;
end; {END DE LA HABITACION 1}

2: begin
clrscr;
habitacion := dias * 60;
writeln('|==========================================================================================|');
Writeln('|                         Has seleccionado la habitacion Sencilla                          |');
writeln('|==========================================================================================|');
Writeln('|Calidad de Habitacion:                                                                    |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Amplia y confortable habitacion decorada con un estilo vanguardista, cama Lidotel Royal   |');
Writeln('|King con sabanas de algodon egipcio, soporte para iPod con reloj despertador, TV 32" HD   |');
Writeln('|Plasma con cable, bano con ducha, cafetera electrica, nevera ejecutiva, caja electronica  |');
Writeln('|de seguridad y secador de cabello.                                                        |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Incluye:                                                                                  |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Desayuno Buffet en Restaurant Le Nouveau, acceso inalambrico a Internet (WIFI),acceso a   |');
Writeln('|las instalaciones del Business Center, uso de nuestra exclusiva piscina, acceso a nuestro |');
Writeln('|moderno gimnasio y Kit de vanidades. Ninos de 0 a 2 anos sin recargos.|');
writeln('|==========================================================================================|');
writeln('|Para confirmar esta habitacion presione cualquier tecla                                   |');
writeln('|------------------------------------------------------------------------------------------|');
write('----> ');
readln(confir);
clrscr;
end; {end de la habitacion 2}

3: begin
clrscr;
habitacion := dias * 120;
writeln('|==========================================================================================|');
Writeln('|                           Has seleccionado la habitacion Doble                           |');
writeln('|==========================================================================================|');
Writeln('|Calidad de Habitacion:                                                                    |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Amplia y confortable habitacion decorada con un estilo vanguardista, Dos Camas Lidotel    |');
Writeln('|Full con sabanas de algodon egipcio, soporte para iPod con reloj despertador, TV 32" HD   |');
Writeln('|Plasma con cable, bano con ducha, cafetera electrica, nevera ejecutiva, caja electronica  |');
Writeln('|de seguridad secador de cabello.                                                          |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Incluye:                                                                                  |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Desayuno Buffet en el Restaurant Le Nouveau, acceso inalambrico a Internet (WIFI), acceso |');
Writeln('|a las instalaciones del Business Center, uso de nuestra exclusiva piscina, acceso a       |');
Writeln('|nuestro moderno gimnasio y Kit de vanidades. Niños de 0 a 2 años sin recargos.            |');
writeln('|==========================================================================================|');
writeln('|Para confirmar esta habitacion presione cualquier tecla                                   |');
writeln('|------------------------------------------------------------------------------------------|');
write('----> ');
readln(confir);
clrscr;
end;{end de la habitacion 3}

4: begin
clrscr;
habitacion := dias * 300;
writeln('|==========================================================================================|');
Writeln('|                           Has seleccionado la habitacion SUITE                           |');
writeln('|==========================================================================================|');
Writeln('|Calidad de Habitacion:                                                                    |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Calida y confortable habitacion decorada con un estilo vanguardista, 100% libre de humo,  |');
Writeln('|Cama Lidotel Royal King, con reloj despertador, TV 32" HD Plasma con cable, 2 banos con   |');
Writeln('|ducha, cafetera electrica, nevera ejecutiva, caja electronica de seguridad y secador de   |');
Writeln('|cabello, armario adicional amplio y area separada con 2 sofa-cama individuales.           |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Incluye:                                                                                  |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Desayuno Buffet en el Restaurant Le Nouveau, acceso inalambrico a Internet (WIFI),        |');
Writeln('|Business Center, uso de nuestra exclusiva piscina, acceso a nuestro gimnasio, sillas y    |');
Writeln('|toldos en la playa, kit de vanidades y ninos de 0 a 2 anos sin recargos.                  |');
writeln('|==========================================================================================|');
writeln('|Para confirmar esta habitacion presione cualquier tecla                                   |');
writeln('|------------------------------------------------------------------------------------------|');
write('----> ');
readln(confir);
clrscr;
end;{end de la habitacion 4}

end;

writeln('    ||||||||||||||||||||||||||||||||||||||||||||||||||||||');												   
writeln('    |                    MONTO A PAGAR                   |');
writeln('    ||||||||||||||||||||||||||||||||||||||||||||||||||||||'); 
verde; writeln('                            ',habitacion,'$');
blanco; writeln('    |||||||||||||||||||||||||||||||||||||||||||||||||||||||'); 
        writeln('    | Por favor ingrese el dinero para realizar su compra |');
          write('    |||||||||||||||||||||||||||||||||||||||||||||||||||||||',' >>> '); verde; readln(pago);
                                                                                               cobre;
        verde; write('    COMPRA EXITOSA '); blanco; writeln('PARA CONTINUAR POR FAVOR PRESIONE CUALQUIER LETRA');
        readkey;
        clrscr;
 if habitacion = 200 then habitacion_texto := 'FAMILY ROOM';
  if habitacion = 60 then habitacion_texto := 'SENCILLA';
   if habitacion = 120 then habitacion_texto := 'DOBLE';
    if habitacion = 300 then habitacion_texto := 'SUITE';
 writeln('    |-------------------------------------|');
 writeln('    |---------------FACTURA---------------|');
 writeln('    |Datos del Cliente                    |');  
 writeln('    |Nombre: ',(acompanado[cantidad2].nombre));
 writeln('    |Cedula: ',(acompanado[cantidad2].cedula));   
 writeln('    |Email: ',(acompanado[cantidad2].email));  
 writeln('    |Telefono: ',(acompanado[cantidad2].telefono));
 writeln('    |Habitacion :', habitacion_texto);
 writeln('    |Monto: ', habitacion,'$');
 writeln('    |-------------------------------------|');
 writeln('    |Nombre Del Cajero: Eliot             |');
 writeln('    |-------------------------------------|');
 
 
if habitacion = 200 then (acompanado[cantidad2].nombre) := (acompanado[cantidad2].nombre)+ ' | Habitacion: SENCILLA|';
if habitacion = 60 then (acompanado[cantidad2].nombre) := (acompanado[cantidad2].nombre)+ ' | Habitacion: SENCILLA|';
if habitacion = 120 then (acompanado[cantidad2].nombre) := (acompanado[cantidad2].nombre)+ ' | Habitacion: DOBLE|';
if habitacion = 300 then (acompanado[cantidad2].nombre) := (acompanado[cantidad2].nombre)+ ' | Habitacion: SUITE|';
 
 
writeln;
write(' Presioan una tecla para continuar '); readkey;
clrscr;

end; {END DE LAS HABITACIONES}
end 

else
writeln('Base de datos llena');
END; { End de la opcion 2 ACOMPANADO}
//----------------------------------------------------------------------------------------------------------------------------------//
3: begin if cantidad3 < 1000 then { OPCION 3 grupo/familia }
begin 
clrscr;

writeln('|====================================|');
writeln('|Cuantos adultos?                    |');
writeln('|====================================|');
  Write('|----> ');readln(adultos);
writeln('|====================================|');
writeln('|Cuantos ninos?                      |');
writeln('|====================================|');
  Write('|----> ');readln(ninos);
writeln('|====================================|');

adultos_ninos := adultos + ninos;

for i_grupo:= 1 to adultos_ninos do
begin { inicio del for }
cantidad3:= cantidad3 + 1;
repeat
clrscr;
writeln('|====================================|');
writeln('|          (3) Grupo/Familia         |');
writeln('|====================================|');
writeln;
writeln('|=================================================|');
writeln('|Dime el nombre y el apellido de la persona ',cantidad3);
writeln('|=================================================|');
  write('|---> '); readln(Grupo_Familia[cantidad3].nombre);
  until ((Grupo_Familia[cantidad3].nombre) <> '');
  
  begin
  repeat
    clrscr;
writeln('|====================================|');
writeln('|Dime la cedula de la persona ', cantidad3);
writeln('|====================================|');
  write('|---> '); readln(Grupo_Familia[cantidad3].cedula);
  until ((Grupo_Familia[cantidad3].cedula) <> '');
  end;

begin
repeat
  clrscr;
writeln('|====================================|');
writeln('|Dime el e-mail de la persona ', cantidad3);
writeln('|====================================|');
  write('|---> '); readln(Grupo_Familia[cantidad3].email);
  until ((Grupo_Familia[cantidad3].email) <> '');
  end;
  
  begin
  repeat
    clrscr;
writeln('|=================================================|');
writeln('|Dime el numero de telefono de la persona  ', cantidad3);
writeln('|=================================================|');
  write('|---> '); readln(Grupo_Familia[cantidad3].telefono);
  until ((Grupo_Familia[cantidad3].telefono) <> '');
  end;
  
  begin
  repeat
  clrscr;
writeln('|====================================|');
writeln('|Dime la edad de la persona ', cantidad3);
writeln('|====================================|');
  write('|---> '); readln(Grupo_Familia[cantidad3].edad);
  clrscr;
  until ((Grupo_Familia[cantidad3].edad) <> '');
end;



writeln;
write(' Presioan una tecla para continuar '); readkey;
clrscr;
end; { end del for }

clrscr;
begin
writeln('|====================================|');
Writeln('|    Cuantos dias te hospedaras?     |');
Writeln('|------------------------------------|');
readln(dias);
clrscr;

writeln('|====================================|');
Writeln('|        Que Habitacion deseas?      |');
Writeln('|------------------------------------|');
Writeln('|(1) Family Room 200$                |');
Writeln('|(2) Sencilla    60$                 |');
Writeln('|(3) Doble       120$                |');
Writeln('|(4) Suite       300$                |');
writeln('|====================================|');
Write('----> '); readln(opcion);
while (opcion <> 1) and (opcion <> 2) and (opcion <> 3) and (opcion <> 4) do 
   begin
    writeln('|====================================|');
  WRITEln('|   Selecciona una opcion correcta   |');
  writeln('|====================================|');
  write('|---> ');readln(opcion);
  end;

case Opcion of
1: begin
habitacion := dias * 200;
clrscr;
writeln('|==========================================================================================|');
Writeln('|                       Has seleccionado la habitacion Family Room                         |');
writeln('|==========================================================================================|');
Writeln('|Calidad de Habitacion:                                                                    |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Calida y confortable habitacian decorada con un estilo vanguardista, 100% libre de humo,  |');
Writeln('|Cama Lidotel Royal King,con reloj despertador, TV 32" HD pasma con cable, bano con ducha, |');
Writeln('|Cafetera electrica, nevera ejecutiva, caja electronica de seguridad y secador de cabello, |');
Writeln('|Armario adicional amplio, una habitacion separada con dos camas full, bano con cucha.     |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Incluye:                                                                                  |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Desayuno Beffet en el Restaurant Le Noveau, acceso inalambrico a Internet (WIFI), Business|');
Writeln('|Center, uso de nuestra exclusiva piscina, acceso a nuestro gimnasio, sillas y toldos en la|');
Writeln('|Playa, kit de vanidades y ninos de 0 a 2 anos sin recargos.                               |');
writeln('|==========================================================================================|');
writeln('|Para confirmar esta habitacion presione cualquier tecla                                   |');
writeln('|------------------------------------------------------------------------------------------|');
write('----> ');
readln(confir);
clrscr;
end; {END DE LA HABITACION 1}

2: begin
habitacion := dias * 60;
clrscr;
writeln('|==========================================================================================|');
Writeln('|                         Has seleccionado la habitacion Sencilla                          |');
writeln('|==========================================================================================|');
Writeln('|Calidad de Habitacion:                                                                    |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Amplia y confortable habitacion decorada con un estilo vanguardista, cama Lidotel Royal   |');
Writeln('|King con sabanas de algodon egipcio, soporte para iPod con reloj despertador, TV 32" HD   |');
Writeln('|Plasma con cable, bano con ducha, cafetera electrica, nevera ejecutiva, caja electronica  |');
Writeln('|de seguridad y secador de cabello.                                                        |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Incluye:                                                                                  |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Desayuno Buffet en Restaurant Le Nouveau, acceso inalambrico a Internet (WIFI),acceso a   |');
Writeln('|las instalaciones del Business Center, uso de nuestra exclusiva piscina, acceso a nuestro |');
Writeln('|moderno gimnasio y Kit de vanidades. Ninos de 0 a 2 anos sin recargos.|');
writeln('|==========================================================================================|');
writeln('|Para confirmar esta habitacion presione cualquier tecla                                   |');
writeln('|------------------------------------------------------------------------------------------|');
write('----> ');
readln(confir);
end; {end de la habitacion 2}

3: begin
habitacion := dias * 120;
clrscr;
writeln('|==========================================================================================|');
Writeln('|                           Has seleccionado la habitacion Doble                           |');
writeln('|==========================================================================================|');
Writeln('|Calidad de Habitacion:                                                                    |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Amplia y confortable habitacion decorada con un estilo vanguardista, Dos Camas Lidotel    |');
Writeln('|Full con sabanas de algodon egipcio, soporte para iPod con reloj despertador, TV 32" HD   |');
Writeln('|Plasma con cable, bano con ducha, cafetera electrica, nevera ejecutiva, caja electronica  |');
Writeln('|de seguridad secador de cabello.                                                          |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Incluye:                                                                                  |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Desayuno Buffet en el Restaurant Le Nouveau, acceso inalambrico a Internet (WIFI), acceso |');
Writeln('|a las instalaciones del Business Center, uso de nuestra exclusiva piscina, acceso a       |');
Writeln('|nuestro moderno gimnasio y Kit de vanidades. Niños de 0 a 2 años sin recargos.            |');
writeln('|==========================================================================================|');
writeln('|Para confirmar esta habitacion presione cualquier tecla                                   |');
writeln('|------------------------------------------------------------------------------------------|');
write('----> ');
readln(confir);
end;{end de la habitacion 3}

4: begin
habitacion := dias * 300;
clrscr;
writeln('|==========================================================================================|');
Writeln('|                           Has seleccionado la habitacion SUITE                           |');
writeln('|==========================================================================================|');
Writeln('|Calidad de Habitacion:                                                                    |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Calida y confortable habitacion decorada con un estilo vanguardista, 100% libre de humo,  |');
Writeln('|Cama Lidotel Royal King, con reloj despertador, TV 32" HD Plasma con cable, 2 banos con   |');
Writeln('|ducha, cafetera electrica, nevera ejecutiva, caja electronica de seguridad y secador de   |');
Writeln('|cabello, armario adicional amplio y area separada con 2 sofa-cama individuales.           |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Incluye:                                                                                  |');
Writeln('|------------------------------------------------------------------------------------------|');
Writeln('|Desayuno Buffet en el Restaurant Le Nouveau, acceso inalambrico a Internet (WIFI),        |');
Writeln('|Business Center, uso de nuestra exclusiva piscina, acceso a nuestro gimnasio, sillas y    |');
Writeln('|toldos en la playa, kit de vanidades y ninos de 0 a 2 anos sin recargos.                  |');
writeln('|==========================================================================================|');
writeln('|Para confirmar esta habitacion presione cualquier tecla                                   |');
writeln('|------------------------------------------------------------------------------------------|');
write('----> ');
readln(confir);
end;{end de la habitacion 4}

end;
clrscr;
writeln('    ||||||||||||||||||||||||||||||||||||||||||||||||||||||');												   
writeln('    |                    MONTO A PAGAR                   |');
writeln('    ||||||||||||||||||||||||||||||||||||||||||||||||||||||'); 
verde; writeln('                            ',habitacion,'$');
blanco; writeln('    |||||||||||||||||||||||||||||||||||||||||||||||||||||||'); 
        writeln('    | Por favor ingrese el dinero para realizar su compra |');
          write('    |||||||||||||||||||||||||||||||||||||||||||||||||||||||',' >>> '); verde; readln(pago);
                                                                                               cobre;
        verde; write('    COMPRA EXITOSA '); blanco; writeln('PARA CONTINUAR POR FAVOR PRESIONE CUALQUIER LETRA');
        readkey;
        clrscr;
 if habitacion = 200 then habitacion_texto := 'FAMILY ROOM';
  if habitacion = 60 then habitacion_texto := 'SENCILLA';
   if habitacion = 120 then habitacion_texto := 'DOBLE';
    if habitacion = 300 then habitacion_texto := 'SUITE';
 writeln('    |-------------------------------------|');
 writeln('    |---------------FACTURA---------------|');
 writeln('    |Datos del Cliente                    |');  
 writeln('    |Nombre: ',(Grupo_Familia[cantidad3].nombre));
 writeln('    |Cedula: ',(Grupo_Familia[cantidad3].cedula));   
 writeln('    |Email: ',(Grupo_Familia[cantidad3].email));  
 writeln('    |Telefono: ',(Grupo_Familia[cantidad3].telefono));
 writeln('    |Habitacion :', habitacion_texto);
 writeln('    |Monto: ', habitacion,'$');
 writeln('    |-------------------------------------|');
 writeln('    |Nombre Del Cajero: Eliot             |');
 writeln('    |-------------------------------------|');
 
 
if habitacion = 200 then (Grupo_Familia[cantidad3].nombre) := (Grupo_Familia[cantidad3].nombre)+ ' | Habitacion: SENCILLA|';
if habitacion = 60 then (Grupo_Familia[cantidad3].nombre) := (Grupo_Familia[cantidad3].nombre)+ ' | Habitacion: SENCILLA|';
if habitacion = 120 then (Grupo_Familia[cantidad3].nombre) := (Grupo_Familia[cantidad3].nombre)+ ' | Habitacion: DOBLE|';
if habitacion = 300 then (Grupo_Familia[cantidad3].nombre) := (Grupo_Familia[cantidad3].nombre)+ ' | Habitacion: SUITE|';
 
 
writeln;
write(' Presioan una tecla para continuar '); readkey;
clrscr;

end; {END DE LAS HABITACIONES}

end 

else
writeln('Base de datos llena');

end;

//----------------------------------------------------------------------------------------------------------------------------------//

end; { End del case de las opciones }

//----------------------------------------------------------------------------------------------------------------------------------//

END; { END DE LA OPCION NUEVO INGRESO }

//----------------------------------------------------------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------------------------------------------------------//
2: BEGIN { INICIO DE VER TODOS LOS INGRESADOS }
clrscr;
writeln('|====================================|');
Writeln('|     QUE INGRESOS DESESEAS VER?     |');
writeln('|------------------------------------|');
writeln('|(1) Individuales                    |');
writeln('|(2) Acompanados                     |');
writeln('|(3) Grupo/Familia                   |');
writeln('|====================================|');
  write('|---> ');readln(opcion);
   While (opcion <> 1) and (opcion <> 2) and (opcion <> 3) do
   begin
  writeln('|====================================|');
  WRITEln('|   Selecciona una opcion correcta   |');
  writeln('|====================================|');
  write('|---> ');readln(opcion);
  end;
  

  

case opcion of  
  
  
1: begin clrscr;
if cantidad = 0 then
begin
writeln('|========================|'); { actualizacion hoy }
writeln('|No hay datos que mostrar|');
writeln('|========================|');
end
else
for i:= 1 to cantidad do

writeln(i, ': ', Individual[i].nombre);


writeln;
write(' Presioan una tecla para continuar '); readkey;
clrscr;
end;{ end de los individuales }
//----------------------------------------------------------------------------------------------------------------------------------//

2: begin
clrscr;
if cantidad2 = 0 then
begin
writeln('|========================|'); { actualizacion hoy }
writeln('|No hay datos que mostrar|');
writeln('|========================|');
end
else
for i:= 1 to cantidad2 do

writeln(i, ': ', acompanado[i].nombre);


writeln;
write(' Presioan una tecla para continuar '); readkey;
clrscr;
end;{ end de los acompañados }
//----------------------------------------------------------------------------------------------------------------------------------//
3: begin
clrscr;
if cantidad3 = 0 then
begin
writeln('|========================|'); { actualizacion hoy }
writeln('|No hay datos que mostrar|');
writeln('|========================|');
end
else
for i:= 1 to cantidad3 do

writeln(i, ': ', Grupo_Familia[i].nombre);


writeln;
write(' Presioan una tecla para continuar '); readkey;
clrscr;
end;{ end del grupo/familiar }
//----------------------------------------------------------------------------------------------------------------------------------//
end; { end del case de los datos ingresados }
end;{ fin de la opcion 2 } 
//----------------------------------------------------------------------------------------------------------------------------------//



//----------------------------------------------------------------------------------------------------------------------------------//

END; { Fin del case }
//----------------------------------------------------------------------------------------------------------------------------------//
until opcion = 0;

END. { FIN DEL PROGRAMA }
