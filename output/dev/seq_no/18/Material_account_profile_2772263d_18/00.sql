 CREATE OR REPLACE VIEW MATERIAL_SF_OPPORTUNITY_C340C2A8_18 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_OPPORTUNITY

WHERE
    
        ((
         CREATED_DATE <= '2023-08-24T20:10:37.369967Z'
        )
         OR CREATED_DATE IS NULL )
    

; 