 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_336D4BB0_21_INTERNAL_EV_SF_CALL_COUNT_POST_SALE AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_call_count_post_sale) AS sf_call_count_post_sale
                FROM (
            SELECT
                account_main_id,
                count(*)
	
	 AS sf_call_count_post_sale
            FROM entityVarTable_account_9af_21
            
            RIGHT JOIN inputVarTable_gong_call_06c_21 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND DATE >= sf_customer_signed_date
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 