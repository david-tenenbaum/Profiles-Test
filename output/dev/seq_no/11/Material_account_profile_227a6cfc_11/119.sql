 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_227A6CFC_11_INTERNAL_EV_SF_OPPORTUNITY_POC_STARTED_DATE__C AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_poc_started_date__c) AS sf_opportunity_poc_started_date__c
                FROM (
            SELECT
                account_main_id,
                any_value(poc_started_date__c)
	
	 AS sf_opportunity_poc_started_date__c
            FROM entityVarTable_account_9af_11
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_11 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 