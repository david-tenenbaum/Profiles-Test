 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_336D4BB0_20_INTERNAL_EV_SF_OPPORTUNITY_IS_CLOSED AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_is_closed) AS sf_opportunity_is_closed
                FROM (
            SELECT
                account_main_id,
                any_value(is_closed)
	
	 AS sf_opportunity_is_closed
            FROM entityVarTable_account_9af_20
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_20 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 