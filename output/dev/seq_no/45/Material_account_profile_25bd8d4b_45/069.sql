 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_25BD8D4B_45_INTERNAL_EV_SF_ACCOUNT_ACCOUNT_STATUS_C AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_account_account_status_c) AS sf_account_account_status_c
                FROM (
            SELECT
                account_main_id,
                any_value(account_status_c)
	
	 AS sf_account_account_status_c
            FROM entityVarTable_account_9af_45
            
            RIGHT JOIN inputVarTable_sf_account_d72_45 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 