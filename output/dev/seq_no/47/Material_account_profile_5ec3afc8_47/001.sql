 CREATE OR REPLACE VIEW MATERIAL_SF_OPPORTUNITY_6B36E39E_47 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_OPPORTUNITY

WHERE
    
        ((
         CREATED_DATE <= '2023-09-20T17:56:01.027205Z'
        )
         OR CREATED_DATE IS NULL )
    

; 