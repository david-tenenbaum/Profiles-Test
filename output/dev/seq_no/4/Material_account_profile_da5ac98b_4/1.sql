 CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_PROFILE_DA5AC98B_4 AS 
            SELECT account_main_id
                , COALESCE('2023-08-21T16:03:06.012475Z',   

  SYSDATE()

)::timestamp AS valid_at
            
            FROM entityVarTable_account_9af_4
        ; 