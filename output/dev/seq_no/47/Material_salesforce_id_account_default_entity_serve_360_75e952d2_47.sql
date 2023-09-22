 
   CREATE OR REPLACE VIEW MATERIAL_SALESFORCE_ID_ACCOUNT_DEFAULT_ENTITY_SERVE_360_75E952D2_47 AS 



























  
  
  
  




			
    
        
            
    
         WITH dummy_variable as (select 1) 
        
        
    

        
    

			



/* Macros */



/* endMacros */
, distinct_served_ids AS (
    SELECT DISTINCT 
    
        other_id
        AS salesforce_id
    
    FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_47
    
        WHERE other_id_type = 'salesforce_id'
    
)


    
        ,Material_account_profile_5ec3afc8_47_ID_MERGED AS (
            
    
    
            SELECT DISTINCT MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_47.other_id AS salesforce_id
            
                ,Material_account_profile_5ec3afc8_47.sf_account_id
            
                ,Material_account_profile_5ec3afc8_47.sf_account_name
            
                ,Material_account_profile_5ec3afc8_47.sf_account_industry
            
                ,Material_account_profile_5ec3afc8_47.sf_account_website
            
                ,Material_account_profile_5ec3afc8_47.sf_account_owner_id
            
                ,Material_account_profile_5ec3afc8_47.sf_account_owner_name
            
                ,Material_account_profile_5ec3afc8_47.sf_account_created_by_id
            
                ,Material_account_profile_5ec3afc8_47.sf_account_last_activity_date
            
                ,Material_account_profile_5ec3afc8_47.sf_account_company_type_c
            
                ,Material_account_profile_5ec3afc8_47.sf_account_account_status_c
            
                ,Material_account_profile_5ec3afc8_47.sf_account_account_sub_status_c
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_most_recent_id
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_name
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_most_recent_amount
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_expected_revenue
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_forecast_category
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_is_closed
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_is_won
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_most_recent_lead_source
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_most_recent_next_step
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_most_recent_stage_name
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_most_recent_type
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_poc_c
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_poc_started_date_c
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_segment_customer_c
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_most_recent_probability
            
                ,Material_account_profile_5ec3afc8_47.sf_opportunity_company_type_c
            
                ,Material_account_profile_5ec3afc8_47.sf_most_recent_call_date
            
                ,Material_account_profile_5ec3afc8_47.sf_most_recent_email_date
            
                ,Material_account_profile_5ec3afc8_47.sf_days_since_last_activity
            
                ,Material_account_profile_5ec3afc8_47.sf_call_count_last_7
            
                ,Material_account_profile_5ec3afc8_47.sf_call_count_last_14
            
                ,Material_account_profile_5ec3afc8_47.sf_call_count_last_30
            
                ,Material_account_profile_5ec3afc8_47.sf_email_count_last_7
            
                ,Material_account_profile_5ec3afc8_47.sf_email_count_last_14
            
                ,Material_account_profile_5ec3afc8_47.sf_email_count_last_30
            
            FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_47
            INNER JOIN Material_account_profile_5ec3afc8_47
            ON MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_47.account_main_id = Material_account_profile_5ec3afc8_47.account_main_id
            WHERE MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_47.other_id_type = 'salesforce_id'
    
    

        )
    


SELECT
distinct_served_ids.salesforce_id

    
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_account_id
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_account_name
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_account_industry
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_account_website
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_account_owner_id
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_account_owner_name
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_account_created_by_id
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_account_last_activity_date
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_account_company_type_c
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_account_account_status_c
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_account_account_sub_status_c
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_most_recent_id
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_name
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_most_recent_amount
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_expected_revenue
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_forecast_category
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_is_closed
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_is_won
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_most_recent_lead_source
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_most_recent_next_step
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_most_recent_stage_name
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_most_recent_type
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_poc_c
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_poc_started_date_c
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_segment_customer_c
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_most_recent_probability
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_opportunity_company_type_c
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_most_recent_call_date
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_most_recent_email_date
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_days_since_last_activity
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_call_count_last_7
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_call_count_last_14
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_call_count_last_30
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_email_count_last_7
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_email_count_last_14
        
            , Material_account_profile_5ec3afc8_47_ID_MERGED.sf_email_count_last_30
        
    

FROM
distinct_served_ids

          
        FULL OUTER JOIN Material_account_profile_5ec3afc8_47_ID_MERGED
        ON Material_account_profile_5ec3afc8_47_ID_MERGED.salesforce_id = distinct_served_ids.salesforce_id 
    

			
    
        
            
        
    

			;  