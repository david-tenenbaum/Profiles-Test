 CREATE OR REPLACE VIEW MATERIAL_SF_ACCOUNT_84603234_25 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_ACCOUNT

WHERE
    
        ((
         CREATED_DATE <= '2023-08-30T01:31:00.783534Z'
        )
         OR CREATED_DATE IS NULL )
    

; 