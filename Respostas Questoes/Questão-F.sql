/*
f) Qual o gênero teve a maior venda de ingressos? Por estado?
*/

SELECT 
 TOP 1 COUNT(*)
 ,dim_fil.Fil_Genero
  FROM Fat_Ingressos ing 
              inner join Dim_Filme dim_fil ON(ing.Fil_IdDw = dim_fil.Fil_IdDw)
 GROUP BY dim_fil.Fil_Genero ORDER BY 1 desc 

 SELECT 
 TOP 1 COUNT(*)
 ,dim_loc.Loc_Estado
  FROM Fat_Ingressos ing 
              inner join Dim_Local dim_loc ON(ing.Loc_IdDw = dim_loc.Loc_IdDw)
 GROUP BY dim_loc.Loc_Estado ORDER BY 1 desc 