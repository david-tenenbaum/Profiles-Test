 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_B84D0A8A_29_INTERNAL_EV_SF_ACCOUNT_CREATED_BY_ID AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_account_created_by_id) AS sf_account_created_by_id
                FROM (
            SELECT
                account_main_id,
                any_value(created_by_id)
	
	 AS sf_account_created_by_id
            FROM entityVarTable_account_9af_29
            
            RIGHT JOIN inputVarTable_sf_account_846_29 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 