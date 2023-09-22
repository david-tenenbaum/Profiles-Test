 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_E41DB9BE_26_INTERNAL_EV_SF_ACCOUNT_NAME AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_account_name) AS sf_account_name
                FROM (
            SELECT
                account_main_id,
                any_value(name)
	
	 AS sf_account_name
            FROM entityVarTable_account_9af_26
            
            RIGHT JOIN inputVarTable_sf_account_846_26 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND record_type_id <> '0125x0000006uLeAAI'
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 