 CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_PROFILE_DA5AC98B_3 AS 
            SELECT account_main_id
                , COALESCE('2023-08-21T16:02:22.653821Z',   

  SYSDATE()

)::timestamp AS valid_at
            
            FROM entityVarTable_account_9af_3
        ; 