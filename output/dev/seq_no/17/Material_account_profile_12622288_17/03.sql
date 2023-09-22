 CREATE OR REPLACE TEMPORARY TABLE INPUTVARTABLE_SF_ACCOUNT_846_17 AS (
            
                SELECT
                    
        left(sha1(random()::text),32)
 AS input_row_id,
                    COALESCE(NULL, Material_account_id_stitcher_b1c731d7_17_1.account_main_id) AS account_main_id,
                    Material_sf_account_84603234_17.*
                FROM
                    Material_sf_account_84603234_17
                
                            LEFT JOIN Material_account_id_stitcher_b1c731d7_17 AS Material_account_id_stitcher_b1c731d7_17_1
                        
                        
                            ON case when account_status_c is not null then "ID" when record_type_id <> '0125x0000006uLeAAI' then "ID" when is_deleted = FALSE then "ID" end = Material_account_id_stitcher_b1c731d7_17_1.other_id
                            AND 'salesforce_id' = Material_account_id_stitcher_b1c731d7_17_1.other_id_type
                        
            
        ); 