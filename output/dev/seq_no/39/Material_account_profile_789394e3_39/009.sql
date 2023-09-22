 CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_PROFILE_789394E3_39_INTERNAL_EV_SF_ACCOUNT_ID AS (
            
                SELECT
                    account_main_id,
                    ANY_VALUE (sf_account_id) AS sf_account_id
                FROM (
            SELECT
                account_main_id,
                any_value(id)
	
	 AS sf_account_id
            FROM entityVarTable_account_9af_39
            
            RIGHT JOIN inputVarTable_sf_account_d72_39 USING (account_main_id)
            
            WHERE account_main_id IS NOT NULL
            
            AND record_type_id <> '0125x0000006uLeAAI'
            
            
            GROUP BY account_main_id
            
        )
                GROUP BY account_main_id
            
        ); 