 CREATE OR REPLACE VIEW MATERIAL_SF_OPPORTUNITY_C340C2A8_15 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_OPPORTUNITY

WHERE
    
        ((
         CREATED_DATE <= '2023-08-24T19:55:01.812353Z'
        )
         OR CREATED_DATE IS NULL )
    

; 