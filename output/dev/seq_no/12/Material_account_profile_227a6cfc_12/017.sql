 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_227A6CFC_12_INTERNAL_EV_SF_ACCOUNT_WEBSITE AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_account_website) AS sf_account_website
                FROM (
            SELECT
                account_main_id,
                any_value(website)
	
	 AS sf_account_website
            FROM entityVarTable_account_9af_12
            
            RIGHT JOIN inputVarTable_sf_account_846_12 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 