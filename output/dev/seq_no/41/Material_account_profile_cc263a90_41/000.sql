 CREATE OR REPLACE VIEW MATERIAL_EMAILS_D1B10DA3_41 AS 
SELECT
    *
FROM
    DEMO_DB.DAVID_T.EMAILS

WHERE
    
        ((
         DATE <= '2023-09-20T14:04:30.026645Z'
        )
         OR DATE IS NULL )
    

; 