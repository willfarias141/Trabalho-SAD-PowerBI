/*
 e) Qual o cinema teve a maior venda de ingressos? Por estado?

*/

SELECT 
    TOP 1 COUNT(*)
    ,dim_cin.Cin_Nome
   FROM Fat_Ingressos ing 
         inner join Dim_Cinema dim_cin ON(ing.Cin_IdDw = dim_cin.Cin_IdDw)
GROUP BY dim_cin.Cin_Nome

SELECT 
    TOP 1 COUNT(*)
    ,dim_loc.Loc_Estado
   FROM Fat_Ingressos ing 
         inner join Dim_Local dim_loc ON(ing.Loc_IdDw = dim_loc.Loc_IdDw)
GROUP BY dim_loc.Loc_Estado