 CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_PROFILE_CD2E2E0A_28 AS 
            SELECT account_main_id
                , COALESCE('2023-09-08T14:45:50.388562Z',   

  SYSDATE()

)::timestamp AS valid_at
            
                , sf_account_name
            
                , sf_account_id
            
                , sf_opportunity_most_recent_id
            
                , sf_account_industry
            
                , sf_account_website
            
                , sf_account_owner_id
            
                , sf_account_created_by_id
            
                , sf_account_last_activity_date
            
                , sf_account_company_type_c
            
                , sf_account_account_status_c
            
                , sf_account_account_sub_status_c
            
                , sf_opportunity_most_recent_amount
            
            FROM entityVarTable_account_9af_28
        ; 