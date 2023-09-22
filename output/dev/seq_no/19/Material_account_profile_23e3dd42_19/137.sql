 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_23E3DD42_19_INTERNAL_EV_SF_OPPORTUNITY_COMPANY_TYPE_C AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_company_type_c) AS sf_opportunity_company_type_c
                FROM (
            SELECT
                account_main_id,
                any_value(company_type_c)
	
	 AS sf_opportunity_company_type_c
            FROM entityVarTable_account_9af_19
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_19 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 