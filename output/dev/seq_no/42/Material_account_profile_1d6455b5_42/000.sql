 CREATE OR REPLACE VIEW MATERIAL_EMAILS_D1B10DA3_42 AS 
SELECT
    *
FROM
    DEMO_DB.DAVID_T.EMAILS

WHERE
    
        ((
         DATE <= '2023-09-20T14:09:05.325226Z'
        )
         OR DATE IS NULL )
    

; 