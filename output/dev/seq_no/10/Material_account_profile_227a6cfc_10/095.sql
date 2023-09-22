 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_227A6CFC_10_INTERNAL_EV_SF_OPPORTUNITY_TYPE AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_type) AS sf_opportunity_type
                FROM (
            SELECT
                account_main_id,
                any_value(type)
	
	 AS sf_opportunity_type
            FROM entityVarTable_account_9af_10
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_10 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 