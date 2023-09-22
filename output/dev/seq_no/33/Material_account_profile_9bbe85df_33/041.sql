 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_9BBE85DF_33_INTERNAL_EV_SF_ACCOUNT_OWNER_NAME AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_account_owner_name) AS sf_account_owner_name
                FROM (
            SELECT
                account_main_id,
                any_value(owner_name)
	
	 AS sf_account_owner_name
            FROM entityVarTable_account_9af_33
            
            RIGHT JOIN inputVarTable_sf_account_846_33 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 