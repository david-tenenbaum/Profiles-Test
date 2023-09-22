 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_25BD8D4B_45_INTERNAL_EV_SF_MOST_RECENT_EMAIL_DATE AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_most_recent_email_date) AS sf_most_recent_email_date
                FROM (
            SELECT
                account_main_id,
                first_value(DATE)
	OVER (
		
    -- todo: fix this
	PARTITION BY account_main_id

		
	ORDER BY DATE desc

		
	)
	 AS sf_most_recent_email_date
            FROM entityVarTable_account_9af_45
            
            RIGHT JOIN inputVarTable_emails_d1b_45 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
        )
                GROUP BY account_main_id
            
        ); 