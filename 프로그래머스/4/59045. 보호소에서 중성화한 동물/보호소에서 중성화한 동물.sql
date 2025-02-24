SELECT AO.ANIMAL_ID, AO.ANIMAL_TYPE, AO.NAME
FROM ANIMAL_OUTS AO LEFT JOIN ANIMAL_INS AI ON AO.ANIMAL_ID = AI.ANIMAL_ID
WHERE (AO.SEX_UPON_OUTCOME LIKE 'Neutered%' OR AO.SEX_UPON_OUTCOME LIKE 'Spayed%') AND (AI.SEX_UPON_INTAKE LIKE 'Intact%')
ORDER BY AO.ANIMAL_ID