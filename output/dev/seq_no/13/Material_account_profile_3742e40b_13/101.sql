 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_3742E40B_13_INTERNAL_EV_SF_OPPORTUNITY_PROBABILITY AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_probability) AS sf_opportunity_probability
                FROM (
            SELECT
                account_main_id,
                any_value(probability)
	
	 AS sf_opportunity_probability
            FROM entityVarTable_account_9af_13
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_13 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 