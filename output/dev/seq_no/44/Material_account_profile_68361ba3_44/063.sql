 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_68361BA3_44_INTERNAL_EV_SF_ACCOUNT_COMPANY_TYPE_C AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_account_company_type_c) AS sf_account_company_type_c
                FROM (
            SELECT
                account_main_id,
                any_value(company_type_c)
	
	 AS sf_account_company_type_c
            FROM entityVarTable_account_9af_44
            
            RIGHT JOIN inputVarTable_sf_account_d72_44 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 