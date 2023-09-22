 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_68361BA3_43_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_ID AS (
            
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
            FROM entityVarTable_account_9af_43
            
            RIGHT JOIN inputVarTable_sf_opportunity_6b3_43 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND record_type_id <> '0125x0000006uLeAAI' AND effective_date_c IS NOT null AND is_won <> false AND is_closed <> false
            
            
        )
                GROUP BY account_main_id
            
        ); 