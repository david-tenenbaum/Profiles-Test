 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_B899A789_31_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_ID AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_most_recent_id) AS sf_opportunity_most_recent_id
                FROM (
            SELECT
                account_main_id,
                first_value(id)
	OVER (
		
    -- todo: fix this
	PARTITION BY account_main_id

		
	ORDER BY created_date desc

		
	)
	 AS sf_opportunity_most_recent_id
            FROM entityVarTable_account_9af_31
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_31 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND record_type_id <> '0125x0000006uLeAAI'
            
            
        )
                GROUP BY account_main_id
            
        ); 