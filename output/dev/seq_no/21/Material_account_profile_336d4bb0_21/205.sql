 CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_PROFILE_336D4BB0_21 AS 
            SELECT account_main_id
                , COALESCE('2023-08-28T19:54:03.918661Z',   

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
            
                , sf_opportunity_amount
            
                , sf_opportunity_is_closed
            
                , sf_opportunity_is_won
            
                , sf_opportunity_lead_source
            
                , sf_opportunity_next_step
            
                , sf_opportunity_stage_name
            
                , sf_opportunity_type
            
                , sf_opportunity_poc_c
            
                , sf_opportunity_poc_started_date_c
            
                , sf_opportunity_segment_customer_c
            
                , sf_opportunity_probability
            
                , sf_opportunity_company_type_c
            
                , sf_call_count_pre_sale
            
                , sf_call_count_post_sale
            
                , sf_call_duration_pre_sale
            
                , sf_call_duration_post_sale
            
                , sf_call_count_last_30
            
                , sf_call_count_last_14
            
                , sf_call_count_last_7
            
                , sf_call_duration_last_30
            
                , sf_call_duration_last_14
            
                , sf_call_duration_last_7
            
            FROM entityVarTable_account_9af_21
        ; 