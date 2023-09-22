 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_227A6CFC_11_INTERNAL_EV_SF_OPPORTUNITY_COMPANY_TYPE__C AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_company_type__c) AS sf_opportunity_company_type__c
                FROM (
            SELECT
                account_main_id,
                any_value(company_type__c)
	
	 AS sf_opportunity_company_type__c
            FROM entityVarTable_account_9af_11
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_11 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 