 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_074C1E3F_9_INTERNAL_EV_SF_OPPORTUNITY_STAGE_NAME AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_stage_name) AS sf_opportunity_stage_name
                FROM (
            SELECT
                account_main_id,
                any_value(stagename)
	
	 AS sf_opportunity_stage_name
            FROM entityVarTable_account_9af_9
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_9 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 