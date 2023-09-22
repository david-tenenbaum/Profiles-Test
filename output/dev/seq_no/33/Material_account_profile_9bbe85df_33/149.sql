 CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_PROFILE_9BBE85DF_33 AS 
            SELECT account_main_id
                , COALESCE('2023-09-19T14:25:42.49135Z',   

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
            
                , sf_opportunity_is_closed
            
                , sf_opportunity_is_won
            
                , sf_opportunity_most_recent_lead_source
            
                , sf_opportunity_most_recent_next_step
            
                , sf_opportunity_most_recent_stage_name
            
                , sf_opportunity_most_recent_type
            
                , sf_opportunity_poc_c
            
                , sf_opportunity_poc_started_date_c
            
                , sf_opportunity_segment_customer_c
            
                , sf_opportunity_most_recent_probability
            
                , sf_opportunity_company_type_c
            
            FROM entityVarTable_account_9af_33
        ; 