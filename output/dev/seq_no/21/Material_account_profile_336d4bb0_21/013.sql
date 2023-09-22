 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_336D4BB0_21_INTERNAL_EV_SF_OPPORTUNITY_ACCOUNT_ID AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_account_id) AS sf_opportunity_account_id
                FROM (
            SELECT
                account_main_id,
                any_value(account_id)
	
	 AS sf_opportunity_account_id
            FROM entityVarTable_account_9af_21
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_21 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND record_type_id <> '0125x0000006uLeAAI'
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 