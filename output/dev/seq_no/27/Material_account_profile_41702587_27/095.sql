 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_41702587_27_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_NEXT_STEP AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_most_recent_next_step) AS sf_opportunity_most_recent_next_step
                FROM (
            SELECT
                account_main_id,
                first_value(next_step)
	OVER (
		
    -- todo: fix this
	PARTITION BY account_main_id

		
	ORDER BY last_modified_date desc

		
	)
	 AS sf_opportunity_most_recent_next_step
            FROM entityVarTable_account_9af_27
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_27 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
        )
                GROUP BY account_main_id
            
        ); 