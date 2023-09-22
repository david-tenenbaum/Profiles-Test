 CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_PROFILE_074C1E3F_8 AS 
            SELECT account_main_id
                , COALESCE('2023-08-24T19:37:44.47761Z',   

  SYSDATE()

)::timestamp AS valid_at
            
                , sf_account_name
            
                , sf_account_industry
            
                , sf_account_website
            
                , sf_account_owner_id
            
                , sf_account_created_by
            
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
            
                , sf_opportunity_poc_started_date__c
            
                , sf_opportunity_segment_customer__c
            
                , sf_opportunity_probability
            
                , sf_opportunity_company_type__c
            
            FROM entityVarTable_account_9af_8
        ; 