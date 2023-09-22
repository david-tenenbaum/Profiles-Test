 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_1D6455B5_42_INTERNAL_EV_SF_MOST_RECENT_ACTIVITY_DATE AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_most_recent_activity_date) AS sf_most_recent_activity_date
                FROM (
            SELECT
                account_main_id,
                MAX(sf_most_recent_call_date, sf_most_recent_email_date)
	
	 AS sf_most_recent_activity_date
            FROM entityVarTable_account_9af_42
            
            RIGHT JOIN inputVarTable_emails_d1b_42 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND sf_most_recent_call_date is not null and sf_most_recent_email_date is not null
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 