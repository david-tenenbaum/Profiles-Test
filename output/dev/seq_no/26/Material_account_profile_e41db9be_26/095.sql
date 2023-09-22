 CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_PROFILE_E41DB9BE_26 AS 
            SELECT account_main_id
                , COALESCE('2023-08-30T01:39:02.212152Z',   

  SYSDATE()

)::timestamp AS valid_at
            
                , sf_account_name
            
                , sf_account_id
            
                , sf_opportunity_account_id
            
                , sf_account_industry
            
                , sf_account_website
            
                , sf_account_owner_id
            
                , sf_account_created_by_id
            
                , sf_account_last_activity_date
            
                , sf_account_company_type_c
            
                , sf_account_account_status_c
            
                , sf_account_account_sub_status_c
            
                , sf_opportunity_most_recent_amount
            
                , sf_opportunity_is_closed
            
                , sf_opportunity_is_won
            
                , sf_opportunity_most_recent_lead_source
            
            FROM entityVarTable_account_9af_26
        ; 