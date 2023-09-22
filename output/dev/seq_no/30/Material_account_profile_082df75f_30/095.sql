 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_082DF75F_30_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_NEXT_STEP AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_most_recent_next_step) AS sf_opportunity_most_recent_next_step
                FROM (
            SELECT
                account_main_id,
                any_value(next_step)
	
	 AS sf_opportunity_most_recent_next_step
            FROM entityVarTable_account_9af_30
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_30 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND id = sf_opportunity_most_recent_id
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 