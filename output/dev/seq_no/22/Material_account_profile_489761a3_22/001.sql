 CREATE OR REPLACE VIEW MATERIAL_SF_ACCOUNT_84603234_22 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_ACCOUNT

WHERE
    
        ((
         CREATED_DATE <= '2023-08-30T01:22:13.941408Z'
        )
         OR CREATED_DATE IS NULL )
    

; 