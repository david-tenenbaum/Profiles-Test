 CREATE OR REPLACE VIEW MATERIAL_SF_OPPORTUNITY_C340C2A8_29 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_OPPORTUNITY

WHERE
    
        ((
         CREATED_DATE <= '2023-09-08T14:49:07.296239Z'
        )
         OR CREATED_DATE IS NULL )
    

; 