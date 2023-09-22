 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_CC263A90_41_INTERNAL_EV_SF_EMAIL_COUNT_LAST_30 AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_email_count_last_30) AS sf_email_count_last_30
                FROM (
            SELECT
                account_main_id,
                count(*)
	
	 AS sf_email_count_last_30
            FROM entityVarTable_account_9af_41
            
            RIGHT JOIN inputVarTable_emails_d1b_41 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND DATE > dateadd(day, -30, current_date())
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 