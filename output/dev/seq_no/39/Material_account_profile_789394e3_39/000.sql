 CREATE OR REPLACE VIEW MATERIAL_EMAILS_D1B10DA3_39 AS 
SELECT
    *
FROM
    DEMO_DB.DAVID_T.EMAILS

WHERE
    
        ((
         DATE <= '2023-09-20T14:02:44.096369Z'
        )
         OR DATE IS NULL )
    

; 