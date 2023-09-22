 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_E6A3C9DC_35_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_AMOUNT AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_most_recent_amount) AS sf_opportunity_most_recent_amount
                FROM (
            SELECT
                account_main_id,
                any_value(amount)
	
	 AS sf_opportunity_most_recent_amount
            FROM entityVarTable_account_9af_35
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_35 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND id = sf_opportunity_most_recent_id
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 