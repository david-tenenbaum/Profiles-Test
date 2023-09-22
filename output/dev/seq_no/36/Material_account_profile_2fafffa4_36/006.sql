 CREATE OR REPLACE TEMPORARY TABLE INPUTVARTABLE_GONG_CALLS_06C_36 AS (
            
                SELECT
                    
        left(sha1(random()::text),32)
 AS input_row_id,
                    COALESCE(NULL, Material_account_id_stitcher_f603b480_36_1.account_main_id) AS account_main_id,
                    Material_gong_calls_06c7c96d_36.*
                FROM
                    Material_gong_calls_06c7c96d_36
                
                            LEFT JOIN Material_account_id_stitcher_f603b480_36 AS Material_account_id_stitcher_f603b480_36_1
                        
                        
                            ON SALESFORCE_ID = Material_account_id_stitcher_f603b480_36_1.other_id
                            AND 'salesforce_id' = Material_account_id_stitcher_f603b480_36_1.other_id_type
                        
            
        ); 