 CREATE OR REPLACE VIEW MATERIAL_SF_OPPORTUNITY_C340C2A8_12 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_OPPORTUNITY

WHERE
    
        ((
         CREATED_DATE <= '2023-08-24T19:46:48.580844Z'
        )
         OR CREATED_DATE IS NULL )
    

; 