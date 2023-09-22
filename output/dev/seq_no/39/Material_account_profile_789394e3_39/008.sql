 CREATE OR REPLACE TEMPORARY TABLE INPUTVARTABLE_SF_OPPORTUNITY_6B3_39 AS (
            
                SELECT
                    
        left(sha1(random()::text),32)
 AS input_row_id,
                    COALESCE(NULL, Material_account_id_stitcher_53876bca_39_1.account_main_id) AS account_main_id,
                    Material_sf_opportunity_6b36e39e_39.*
                FROM
                    Material_sf_opportunity_6b36e39e_39
                
                            LEFT JOIN Material_account_id_stitcher_53876bca_39 AS Material_account_id_stitcher_53876bca_39_1
                        
                        
                            ON ACCOUNT_ID = Material_account_id_stitcher_53876bca_39_1.other_id
                            AND 'salesforce_id' = Material_account_id_stitcher_53876bca_39_1.other_id_type
                        
            
        ); 