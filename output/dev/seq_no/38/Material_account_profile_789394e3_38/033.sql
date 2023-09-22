 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_789394E3_38_INTERNAL_EV_SF_ACCOUNT_WEBSITE AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_account_website) AS sf_account_website
                FROM (
            SELECT
                account_main_id,
                any_value(website)
	
	 AS sf_account_website
            FROM entityVarTable_account_9af_38
            
            RIGHT JOIN inputVarTable_sf_account_d72_38 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 