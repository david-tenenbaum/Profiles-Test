 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_2E5891D1_24_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_PROBABILITY AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_most_recent_probability) AS sf_opportunity_most_recent_probability
                FROM (
            SELECT
                account_main_id,
                any_value(probability)
	OVER (
		
    -- todo: fix this
	PARTITION BY account_main_id

		
	ORDER BY last_modified_date desc

		
	)
	 AS sf_opportunity_most_recent_probability
            FROM entityVarTable_account_9af_24
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_24 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
        )
                GROUP BY account_main_id
            
        ); 