 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_489761A3_23_INTERNAL_EV_SF_OPPORTUNITY_POC_STARTED_DATE_C AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_poc_started_date_c) AS sf_opportunity_poc_started_date_c
                FROM (
            SELECT
                account_main_id,
                any_value(poc_started_date_c)
	
	 AS sf_opportunity_poc_started_date_c
            FROM entityVarTable_account_9af_23
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_23 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 