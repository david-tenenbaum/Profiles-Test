 CREATE OR REPLACE VIEW MATERIAL_SF_ACCOUNT_84603234_30 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_ACCOUNT

WHERE
    
        ((
         CREATED_DATE <= '2023-09-08T14:53:42.494021Z'
        )
         OR CREATED_DATE IS NULL )
    

; 