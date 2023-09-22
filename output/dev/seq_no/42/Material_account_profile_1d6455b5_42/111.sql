 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_1D6455B5_42_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_STAGE_NAME AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_most_recent_stage_name) AS sf_opportunity_most_recent_stage_name
                FROM (
            SELECT
                account_main_id,
                any_value(stage_name)
	
	 AS sf_opportunity_most_recent_stage_name
            FROM entityVarTable_account_9af_42
            
            RIGHT JOIN inputVarTable_sf_opportunity_6b3_42 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND id = sf_opportunity_most_recent_id
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 