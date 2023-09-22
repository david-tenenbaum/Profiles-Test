 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_789394E3_39_INTERNAL_EV_SF_OPPORTUNITY_IS_WON AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_is_won) AS sf_opportunity_is_won
                FROM (
            SELECT
                account_main_id,
                any_value(is_won)
	
	 AS sf_opportunity_is_won
            FROM entityVarTable_account_9af_39
            
            RIGHT JOIN inputVarTable_sf_opportunity_6b3_39 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND id = sf_opportunity_most_recent_id
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 