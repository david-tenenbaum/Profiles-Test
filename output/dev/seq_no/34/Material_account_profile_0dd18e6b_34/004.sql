 CREATE OR REPLACE TEMPORARY TABLE INPUTVARTABLE_SF_OPPORTUNITY_C34_34 AS (
            
                SELECT
                    
        left(sha1(random()::text),32)
 AS input_row_id,
                    COALESCE(NULL, Material_account_id_stitcher_6b1ce8f1_34_1.account_main_id) AS account_main_id,
                    Material_sf_opportunity_c340c2a8_34.*
                FROM
                    Material_sf_opportunity_c340c2a8_34
                
                            LEFT JOIN Material_account_id_stitcher_6b1ce8f1_34 AS Material_account_id_stitcher_6b1ce8f1_34_1
                        
                        
                            ON ACCOUNT_ID = Material_account_id_stitcher_6b1ce8f1_34_1.other_id
                            AND 'salesforce_id' = Material_account_id_stitcher_6b1ce8f1_34_1.other_id_type
                        
            
        ); 