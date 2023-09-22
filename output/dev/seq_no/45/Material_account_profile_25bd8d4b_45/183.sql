 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_25BD8D4B_45_INTERNAL_EV_SF_EMAIL_COUNT_LAST_7 AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_email_count_last_7) AS sf_email_count_last_7
                FROM (
            SELECT
                account_main_id,
                count(*)
	
	 AS sf_email_count_last_7
            FROM entityVarTable_account_9af_45
            
            RIGHT JOIN inputVarTable_emails_d1b_45 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND DATE > dateadd(day, -7, current_date())
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 