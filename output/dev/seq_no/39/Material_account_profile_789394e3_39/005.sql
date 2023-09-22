 CREATE OR REPLACE TEMPORARY TABLE INPUTVARTABLE_EMAILS_D1B_39 AS (
            
                SELECT
                    
        left(sha1(random()::text),32)
 AS input_row_id,
                    COALESCE(NULL, Material_account_id_stitcher_53876bca_39_1.account_main_id) AS account_main_id,
                    Material_emails_d1b10da3_39.*
                FROM
                    Material_emails_d1b10da3_39
                
                            LEFT JOIN Material_account_id_stitcher_53876bca_39 AS Material_account_id_stitcher_53876bca_39_1
                        
                        
                            ON SALESFORCE_ID = Material_account_id_stitcher_53876bca_39_1.other_id
                            AND 'salesforce_id' = Material_account_id_stitcher_53876bca_39_1.other_id_type
                        
            
        ); 