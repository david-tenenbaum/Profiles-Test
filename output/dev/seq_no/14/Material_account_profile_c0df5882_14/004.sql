 CREATE OR REPLACE TEMPORARY TABLE INPUTVARTABLE_SF_OPPORTUNITY_C34_14 AS (
            
                SELECT
                    
        left(sha1(random()::text),32)
 AS input_row_id,
                    COALESCE(NULL, Material_account_id_stitcher_b1c731d7_14_1.account_main_id) AS account_main_id,
                    Material_sf_opportunity_c340c2a8_14.*
                FROM
                    Material_sf_opportunity_c340c2a8_14
                
                            LEFT JOIN Material_account_id_stitcher_b1c731d7_14 AS Material_account_id_stitcher_b1c731d7_14_1
                        
                        
                            ON ACCOUNT_ID = Material_account_id_stitcher_b1c731d7_14_1.other_id
                            AND 'salesforce_id' = Material_account_id_stitcher_b1c731d7_14_1.other_id_type
                        
            
        ); 