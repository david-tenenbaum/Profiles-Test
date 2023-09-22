 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_01B6DB7E_32_INTERNAL_EV_SF_OPPORTUNITY_IS_CLOSED AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_is_closed) AS sf_opportunity_is_closed
                FROM (
            SELECT
                account_main_id,
                any_value(is_closed)
	
	 AS sf_opportunity_is_closed
            FROM entityVarTable_account_9af_32
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_32 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND id = sf_opportunity_most_recent_id
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 