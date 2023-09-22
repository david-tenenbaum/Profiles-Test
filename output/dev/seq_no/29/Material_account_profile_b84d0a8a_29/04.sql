 CREATE OR REPLACE TEMPORARY TABLE INPUTVARTABLE_SF_OPPORTUNITY_C34_29 AS (
            
                SELECT
                    
        left(sha1(random()::text),32)
 AS input_row_id,
                    COALESCE(NULL, Material_account_id_stitcher_6b1ce8f1_29_1.account_main_id) AS account_main_id,
                    Material_sf_opportunity_c340c2a8_29.*
                FROM
                    Material_sf_opportunity_c340c2a8_29
                
                            LEFT JOIN Material_account_id_stitcher_6b1ce8f1_29 AS Material_account_id_stitcher_6b1ce8f1_29_1
                        
                        
                            ON ACCOUNT_ID = Material_account_id_stitcher_6b1ce8f1_29_1.other_id
                            AND 'salesforce_id' = Material_account_id_stitcher_6b1ce8f1_29_1.other_id_type
                        
            
        ); 