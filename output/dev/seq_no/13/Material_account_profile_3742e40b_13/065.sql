 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_3742E40B_13_INTERNAL_EV_SF_OPPORTUNITY_LEAD_SOURCE AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_lead_source) AS sf_opportunity_lead_source
                FROM (
            SELECT
                account_main_id,
                any_value(leadsource)
	
	 AS sf_opportunity_lead_source
            FROM entityVarTable_account_9af_13
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_13 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 