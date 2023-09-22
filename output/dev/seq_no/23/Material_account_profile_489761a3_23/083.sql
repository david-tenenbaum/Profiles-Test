 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_489761A3_23_INTERNAL_EV_SF_OPPORTUNITY_IS_WON AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_is_won) AS sf_opportunity_is_won
                FROM (
            SELECT
                account_main_id,
                is_won
	OVER (
		
    -- todo: fix this
	PARTITION BY account_main_id

		
	ORDER BY last_modified_date desc

		
	)
	 AS sf_opportunity_is_won
            FROM entityVarTable_account_9af_23
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_23 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
        )
                GROUP BY account_main_id
            
        ); 