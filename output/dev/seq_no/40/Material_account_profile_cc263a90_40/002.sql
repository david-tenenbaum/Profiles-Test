 CREATE OR REPLACE VIEW MATERIAL_SF_ACCOUNT_D72E7994_40 AS 
SELECT
    *
FROM
    DEMO_DB.DAVID_T.SF_ACCOUNT

WHERE
    
        ((
         CREATED_DATE <= '2023-09-20T14:03:45.128559Z'
        )
         OR CREATED_DATE IS NULL )
    

; 