 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_5EC3AFC8_47_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_TYPE AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_most_recent_type) AS sf_opportunity_most_recent_type
                FROM (
            SELECT
                account_main_id,
                any_value(type)
	
	 AS sf_opportunity_most_recent_type
            FROM entityVarTable_account_9af_47
            
            RIGHT JOIN inputVarTable_sf_opportunity_6b3_47 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND id = sf_opportunity_most_recent_id
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 