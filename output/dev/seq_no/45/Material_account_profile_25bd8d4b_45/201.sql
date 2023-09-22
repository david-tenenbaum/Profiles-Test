 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_25BD8D4B_45_INTERNAL_EV_SF_DAYS_SINCE_LAST_ACTIVITY AS (
            
                SELECT * FROM (
            SELECT
                account_main_id,
                DATEDIFF(day, (case when sf_most_recent_call_date > sf_most_recent_email_date THEN sf_most_recent_call_date ELSE sf_most_recent_email_date end), current_date())
	
	 AS sf_days_since_last_activity
            FROM entityVarTable_account_9af_45
            
            WHERE account_main_id IS NOT NULL
            
            AND sf_most_recent_call_date is not null and sf_most_recent_email_date is not null
            
            
        )
            
        ); 