 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_CC263A90_40_INTERNAL_EV_SF_CALL_COUNT_LAST_14 AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_call_count_last_14) AS sf_call_count_last_14
                FROM (
            SELECT
                account_main_id,
                count(*)
	
	 AS sf_call_count_last_14
            FROM entityVarTable_account_9af_40
            
            RIGHT JOIN inputVarTable_gong_calls_d1b_40 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND DATE > dateadd(day, -14, current_date())
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 