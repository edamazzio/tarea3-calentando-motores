(*toma una lista de fechas y una lista de
meses (una lista de enteros) y retorna un int que indica el numero de fechas que estan en
cualquiera de los meses en la lista de meses. (Nota: use la funcion del problema anterior).
Testing = val test3 = number_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]);
resp = 3 
*)


fun number_in_month (date: (int*int*int) list, month: int) = 
    if null date
    then 0
    else if #2 (hd(date))=month
    then 1 + number_in_month((tl date),month)
    else number_in_month((tl date),month)



fun number_in_months (date: (int*int*int) list, month: int list) =
    if null month
    then 0
    else number_in_month(date, hd(month)) + number_in_months(date, tl(month))

