 CREATE OR REPLACE TEMPORARY TABLE INPUTVARTABLE_SF_ACCOUNT_D72_39 AS (
            
                SELECT
                    
        left(sha1(random()::text),32)
 AS input_row_id,
                    COALESCE(NULL, Material_account_id_stitcher_53876bca_39_1.account_main_id) AS account_main_id,
                    Material_sf_account_d72e7994_39.*
                FROM
                    Material_sf_account_d72e7994_39
                
                            LEFT JOIN Material_account_id_stitcher_53876bca_39 AS Material_account_id_stitcher_53876bca_39_1
                        
                        
                            ON case when account_status_c is not null then "ID" when record_type_id <> '0125x0000006uLeAAI' then "ID" when is_deleted = FALSE then "ID" end = Material_account_id_stitcher_53876bca_39_1.other_id
                            AND 'salesforce_id' = Material_account_id_stitcher_53876bca_39_1.other_id_type
                        
            
        ); 