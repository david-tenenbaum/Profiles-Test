 CREATE OR REPLACE VIEW MATERIAL_SF_OPPORTUNITY_C340C2A8_13 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_OPPORTUNITY

WHERE
    
        ((
         CREATED_DATE <= '2023-08-24T19:49:02.044485Z'
        )
         OR CREATED_DATE IS NULL )
    

; 