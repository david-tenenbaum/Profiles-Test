 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_41702587_27_INTERNAL_EV_SF_OPPORTUNITY_POC_C AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_poc_c) AS sf_opportunity_poc_c
                FROM (
            SELECT
                account_main_id,
                any_value(poc_c)
	
	 AS sf_opportunity_poc_c
            FROM entityVarTable_account_9af_27
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_27 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 