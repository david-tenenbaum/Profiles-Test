 CREATE OR REPLACE VIEW MATERIAL_EMAILS_D1B10DA3_47 AS 
SELECT
    *
FROM
    DEMO_DB.DAVID_T.EMAILS

WHERE
    
        ((
         DATE <= '2023-09-20T17:56:01.027205Z'
        )
         OR DATE IS NULL )
    

; 