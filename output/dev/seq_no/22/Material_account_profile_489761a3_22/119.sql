 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_489761A3_22_INTERNAL_EV_SF_OPPORTUNITY_SEGMENT_CUSTOMER_C AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_opportunity_segment_customer_c) AS sf_opportunity_segment_customer_c
                FROM (
            SELECT
                account_main_id,
                any_value(segment_customer_c)
	
	 AS sf_opportunity_segment_customer_c
            FROM entityVarTable_account_9af_22
            
            RIGHT JOIN inputVarTable_sf_opportunity_c34_22 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 