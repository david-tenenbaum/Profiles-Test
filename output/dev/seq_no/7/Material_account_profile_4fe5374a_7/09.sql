 CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_PROFILE_4FE5374A_7 AS 
            SELECT account_main_id
                , COALESCE('2023-08-21T19:56:25.016241Z',   

  SYSDATE()

)::timestamp AS valid_at
            
                , sf_account_name
            
            FROM entityVarTable_account_9af_7
        ; 