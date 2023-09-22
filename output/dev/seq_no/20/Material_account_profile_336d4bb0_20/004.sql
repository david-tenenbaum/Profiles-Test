 CREATE OR REPLACE TEMPORARY TABLE INPUTVARTABLE_GONG_CALL_06C_20 AS (
            
                SELECT
                    
        left(sha1(random()::text),32)
 AS input_row_id,
                    COALESCE(NULL, Material_account_id_stitcher_6b1ce8f1_20_1.account_main_id) AS account_main_id,
                    Material_gong_call_06c7c96d_20.*
                FROM
                    Material_gong_call_06c7c96d_20
                
                            LEFT JOIN Material_account_id_stitcher_6b1ce8f1_20 AS Material_account_id_stitcher_6b1ce8f1_20_1
                        
                        
                            ON SALESFORCE_ID = Material_account_id_stitcher_6b1ce8f1_20_1.other_id
                            AND 'salesforce_id' = Material_account_id_stitcher_6b1ce8f1_20_1.other_id_type
                        
            
        ); 