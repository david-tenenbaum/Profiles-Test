 CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_PROFILE_E818AB5C_16 AS 
            SELECT account_main_id
                , COALESCE('2023-08-24T20:00:16.571339Z',   

  SYSDATE()

)::timestamp AS valid_at
            
                , sf_account_name
            
                , sf_account_id
            
                , sf_account_industry
            
                , sf_account_website
            
                , sf_account_owner_id
            
                , sf_account_created_by_id
            
                , sf_account_last_activity_date
            
                , sf_account_company_type_c
            
                , sf_account_account_status_c
            
                , sf_account_account_sub_status_c
            
                , sf_opportunity_amount
            
            FROM entityVarTable_account_9af_16
        ; 