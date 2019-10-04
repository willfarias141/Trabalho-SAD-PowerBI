/*
 d) Qual o número de ingressos vendidos por tipo de filme?
*/

SELECT 
  COUNT(*)
  ,dim_fil.Fil_Tipo_Filme
 FROM Fat_Ingressos ing
              inner join Dim_Filme dim_fil ON(ing.Fil_IdDw = dim_fil.Fil_IdDw)
GROUP BY dim_fil.Fil_Tipo_Filme
         