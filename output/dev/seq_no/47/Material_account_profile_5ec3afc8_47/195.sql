 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_5EC3AFC8_47_INTERNAL_EV_SF_MOST_RECENT_EMAIL_DATE AS (
            
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
            FROM entityVarTable_account_9af_47
            
            RIGHT JOIN inputVarTable_emails_d1b_47 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
        )
                GROUP BY account_main_id
            
        ); 