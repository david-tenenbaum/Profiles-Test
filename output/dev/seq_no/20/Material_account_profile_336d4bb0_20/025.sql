 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_336D4BB0_20_INTERNAL_EV_SF_ACCOUNT_INDUSTRY AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_account_industry) AS sf_account_industry
                FROM (
            SELECT
                account_main_id,
                any_value(industry)
	
	 AS sf_account_industry
            FROM entityVarTable_account_9af_20
            
            RIGHT JOIN inputVarTable_sf_account_846_20 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 