 CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_PROFILE_10E88045_6 AS 
            SELECT account_main_id
                , COALESCE('2023-08-21T19:51:26.579439Z',   

  SYSDATE()

)::timestamp AS valid_at
            
            FROM entityVarTable_account_9af_6
        ; 