 CREATE OR REPLACE VIEW MATERIAL_SF_ACCOUNT_84603234_17 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_ACCOUNT

WHERE
    
        ((
         CREATED_DATE <= '2023-08-24T20:08:11.949649Z'
        )
         OR CREATED_DATE IS NULL )
    

; 