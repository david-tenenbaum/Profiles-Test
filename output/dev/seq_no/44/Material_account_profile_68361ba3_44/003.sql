 CREATE OR REPLACE VIEW MATERIAL_GONG_CALLS_D1B10DA3_44 AS 
SELECT
    *
FROM
    DEMO_DB.DAVID_T.GONG_CALLS

WHERE
    
        ((
         DATE <= '2023-09-20T15:39:14.638537Z'
        )
         OR DATE IS NULL )
    

; 