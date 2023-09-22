 CREATE OR REPLACE TEMPORARY TABLE INPUTVARTABLE_GONG_CALLS_D1B_46 AS (
            
                SELECT
                    
        left(sha1(random()::text),32)
 AS input_row_id,
                    COALESCE(NULL, Material_account_id_stitcher_53876bca_46_1.account_main_id) AS account_main_id,
                    Material_gong_calls_d1b10da3_46.*
                FROM
                    Material_gong_calls_d1b10da3_46
                
                            LEFT JOIN Material_account_id_stitcher_53876bca_46 AS Material_account_id_stitcher_53876bca_46_1
                        
                        
                            ON SALESFORCE_ID = Material_account_id_stitcher_53876bca_46_1.other_id
                            AND 'salesforce_id' = Material_account_id_stitcher_53876bca_46_1.other_id_type
                        
            
        ); 