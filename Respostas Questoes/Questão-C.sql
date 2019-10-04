/*
 C) Qual o número de ingressos vendidos por dia? Por mês? Por ano?
*/

SELECT  
    COUNT(*)
    ,dim_data.dia
    FROM Fat_Ingressos ing 
          inner join Dim_Data dim_data ON(ing.Dat_IdDw = dim_data.id_dim_data)
GROUP BY dim_data.dia

 SELECT  
    COUNT(*)
    ,dim_data.mes
    FROM Fat_Ingressos ing 
          inner join Dim_Data dim_data ON(ing.Dat_IdDw = dim_data.id_dim_data)
GROUP BY dim_data.mes

 SELECT  
    COUNT(*)
    ,dim_data.ano
    FROM Fat_Ingressos ing 
          inner join Dim_Data dim_data ON(ing.Dat_IdDw = dim_data.id_dim_data)
GROUP BY dim_data.ano