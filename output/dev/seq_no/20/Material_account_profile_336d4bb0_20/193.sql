 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_336D4BB0_20_INTERNAL_EV_SF_CALL_DURATION_LAST_14 AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_call_duration_last_14) AS sf_call_duration_last_14
                FROM (
            SELECT
                account_main_id,
                sum(DURATION)
	
	 AS sf_call_duration_last_14
            FROM entityVarTable_account_9af_20
            
            RIGHT JOIN inputVarTable_gong_call_06c_20 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND DATE > dateadd(day, -14, current_date())
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 