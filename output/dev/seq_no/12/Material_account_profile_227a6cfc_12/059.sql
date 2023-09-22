 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_227A6CFC_12_INTERNAL_EV_SF_OPPORTUNITY_AMOUNT AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_amount) AS sf_opportunity_amount
                FROM (
            SELECT
                account_main_id,
                any_value(amount)
	
	 AS sf_opportunity_amount
            FROM entityVarTable_account_9af_12
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_12 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 