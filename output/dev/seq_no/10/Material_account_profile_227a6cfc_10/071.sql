 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_227A6CFC_10_INTERNAL_EV_SF_OPPORTUNITY_IS_WON AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_is_won) AS sf_opportunity_is_won
                FROM (
            SELECT
                account_main_id,
                any_value(iswon)
	
	 AS sf_opportunity_is_won
            FROM entityVarTable_account_9af_10
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_10 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 