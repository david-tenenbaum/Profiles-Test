 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_0DD18E6B_34_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_ID AS (
            
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

		
	ORDER BY effective_date_c desc

		
	)
	 AS sf_opportunity_most_recent_id
            FROM entityVarTable_account_9af_34
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_34 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND record_type_id <> '0125x0000006uLeAAI' AND effective_date_c IS NOT null
            
            
        )
                GROUP BY account_main_id
            
        ); 