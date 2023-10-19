# e) Les 10 produits pour lesquels le ratio Autres utilisations/Disponibilité intérieure 
# est le plus élevé.

SELECT produit, sum(dispo_int), sum(autres_utilisations), 
(sum(autres_utilisations)/sum(dispo_int)) as ratio
FROM equilibre_prod
GROUP BY produit
ORDER BY ratio DESC
LIMIT 10;