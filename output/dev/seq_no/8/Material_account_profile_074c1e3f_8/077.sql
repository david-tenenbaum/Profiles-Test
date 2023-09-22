 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_074C1E3F_8_INTERNAL_EV_SF_OPPORTUNITY_LEAD_SOURCE AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_lead_source) AS sf_opportunity_lead_source
                FROM (
            SELECT
                account_main_id,
                any_value(leadsource)
	
	 AS sf_opportunity_lead_source
            FROM entityVarTable_account_9af_8
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_8 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 