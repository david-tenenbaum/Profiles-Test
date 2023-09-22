 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_336D4BB0_21_INTERNAL_EV_SF_OPPORTUNITY_STAGE_NAME AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_stage_name) AS sf_opportunity_stage_name
                FROM (
            SELECT
                account_main_id,
                any_value(stage_name)
	
	 AS sf_opportunity_stage_name
            FROM entityVarTable_account_9af_21
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_21 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 