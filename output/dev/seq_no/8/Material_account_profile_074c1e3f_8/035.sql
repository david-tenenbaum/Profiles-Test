 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_074C1E3F_8_INTERNAL_EV_SF_ACCOUNT_LAST_ACTIVITY_DATE AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_account_last_activity_date) AS sf_account_last_activity_date
                FROM (
            SELECT
                account_main_id,
                any_value(last_activity_date)
	
	 AS sf_account_last_activity_date
            FROM entityVarTable_account_9af_8
            
            RIGHT JOIN inputVarTable_sf_account_846_8 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 