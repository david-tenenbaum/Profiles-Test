 CREATE OR REPLACE TEMPORARY TABLE INPUTVARTABLE_EMAILS_D1B_47 AS (
            
                SELECT
                    
        left(sha1(random()::text),32)
 AS input_row_id,
                    COALESCE(NULL, Material_account_id_stitcher_53876bca_47_1.account_main_id) AS account_main_id,
                    Material_emails_d1b10da3_47.*
                FROM
                    Material_emails_d1b10da3_47
                
                            LEFT JOIN Material_account_id_stitcher_53876bca_47 AS Material_account_id_stitcher_53876bca_47_1
                        
                        
                            ON SALESFORCE_ID = Material_account_id_stitcher_53876bca_47_1.other_id
                            AND 'salesforce_id' = Material_account_id_stitcher_53876bca_47_1.other_id_type
                        
            
        ); 