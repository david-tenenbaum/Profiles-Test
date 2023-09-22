 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_789394E3_39_INTERNAL_EV_SF_CALL_COUNT_LAST_7 AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_call_count_last_7) AS sf_call_count_last_7
                FROM (
            SELECT
                account_main_id,
                count(*)
	
	 AS sf_call_count_last_7
            FROM entityVarTable_account_9af_39
            
            RIGHT JOIN inputVarTable_gong_calls_d1b_39 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND DATE > dateadd(day, -7, current_date())
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 