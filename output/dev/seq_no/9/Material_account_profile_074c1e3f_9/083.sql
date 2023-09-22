 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_074C1E3F_9_INTERNAL_EV_SF_OPPORTUNITY_NEXT_STEP AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_next_step) AS sf_opportunity_next_step
                FROM (
            SELECT
                account_main_id,
                any_value(nextstep)
	
	 AS sf_opportunity_next_step
            FROM entityVarTable_account_9af_9
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_9 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 