SELECT 
    MIN(m.monthly_fee) AS faturamento_minimo,
    MAX(m.monthly_fee) AS faturamento_maximo,
    ROUND(AVG(m.monthly_fee), 2) AS faturamento_medio,
    ROUND(SUM(m.monthly_fee), 2) AS faturamento_total
FROM 
   SpotifyClone.plan AS m
INNER JOIN
   SpotifyClone.user AS u ON m.id_plan = u.id_plan;