 CREATE OR REPLACE VIEW MATERIAL_SF_ACCOUNT_84603234_20 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_ACCOUNT

WHERE
    
        ((
         CREATED_DATE <= '2023-08-28T19:52:22.12332Z'
        )
         OR CREATED_DATE IS NULL )
    

; 