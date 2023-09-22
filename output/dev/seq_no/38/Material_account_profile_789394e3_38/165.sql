 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_789394E3_38_INTERNAL_EV_SF_CALL_COUNT_LAST_30 AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_call_count_last_30) AS sf_call_count_last_30
                FROM (
            SELECT
                account_main_id,
                count(*)
	
	 AS sf_call_count_last_30
            FROM entityVarTable_account_9af_38
            
            RIGHT JOIN inputVarTable_gong_calls_d1b_38 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND DATE > dateadd(day, -30, current_date())
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 