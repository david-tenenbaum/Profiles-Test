 CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_PROFILE_10E88045_5 AS 
            SELECT account_main_id
                , COALESCE('2023-08-21T19:51:07.424401Z',   

  SYSDATE()

)::timestamp AS valid_at
            
            FROM entityVarTable_account_9af_5
        ; 