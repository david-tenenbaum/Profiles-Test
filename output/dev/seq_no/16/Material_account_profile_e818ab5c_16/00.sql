 CREATE OR REPLACE VIEW MATERIAL_SF_OPPORTUNITY_C340C2A8_16 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_OPPORTUNITY

WHERE
    
        ((
         CREATED_DATE <= '2023-08-24T20:00:16.571339Z'
        )
         OR CREATED_DATE IS NULL )
    

; 