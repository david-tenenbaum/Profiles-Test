 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_336D4BB0_21_INTERNAL_EV_SF_CALL_DURATION_LAST_30 AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_call_duration_last_30) AS sf_call_duration_last_30
                FROM (
            SELECT
                account_main_id,
                sum(DURATION)
	
	 AS sf_call_duration_last_30
            FROM entityVarTable_account_9af_21
            
            RIGHT JOIN inputVarTable_gong_call_06c_21 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND DATE > dateadd(day, -30, current_date())
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 