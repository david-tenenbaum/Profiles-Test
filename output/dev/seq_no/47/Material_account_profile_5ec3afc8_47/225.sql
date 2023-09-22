 CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_PROFILE_5EC3AFC8_47 AS 
            SELECT account_main_id
                , COALESCE('2023-09-20T17:56:01.027205Z',   

  SYSDATE()

)::timestamp AS valid_at
            
                , sf_account_id
            
                , sf_account_name
            
                , sf_account_industry
            
                , sf_account_website
            
                , sf_account_owner_id
            
                , sf_account_owner_name
            
                , sf_account_created_by_id
            
                , sf_account_last_activity_date
            
                , sf_account_company_type_c
            
                , sf_account_account_status_c
            
                , sf_account_account_sub_status_c
            
                , sf_opportunity_most_recent_id
            
                , sf_opportunity_name
            
                , sf_opportunity_most_recent_amount
            
                , sf_opportunity_expected_revenue
            
                , sf_opportunity_forecast_category
            
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
            
                , sf_most_recent_call_date
            
                , sf_most_recent_email_date
            
                , sf_days_since_last_activity
            
                , sf_call_count_last_7
            
                , sf_call_count_last_14
            
                , sf_call_count_last_30
            
                , sf_email_count_last_7
            
                , sf_email_count_last_14
            
                , sf_email_count_last_30
            
            FROM entityVarTable_account_9af_47
        ; 