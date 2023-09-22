 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_789394E3_38_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_PROBABILITY AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_most_recent_probability) AS sf_opportunity_most_recent_probability
                FROM (
            SELECT
                account_main_id,
                any_value(probability)
	
	 AS sf_opportunity_most_recent_probability
            FROM entityVarTable_account_9af_38
            
            RIGHT JOIN inputVarTable_sf_opportunity_6b3_38 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND id = sf_opportunity_most_recent_id
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 