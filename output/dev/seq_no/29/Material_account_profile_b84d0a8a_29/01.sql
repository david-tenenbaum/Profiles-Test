 CREATE OR REPLACE VIEW MATERIAL_SF_ACCOUNT_84603234_29 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_ACCOUNT

WHERE
    
        ((
         CREATED_DATE <= '2023-09-08T14:49:07.296239Z'
        )
         OR CREATED_DATE IS NULL )
    

; 