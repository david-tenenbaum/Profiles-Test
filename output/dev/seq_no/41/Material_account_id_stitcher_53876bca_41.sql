
	
		
   BEGIN

		
   DROP VIEW IF EXISTS DUMMY_NON_EXISTENT_VIEW;  



























  
  
  
  




			
    
        
            
    
        
    
        
    
        
    
        
    
        
    
        
            
                
                
   CREATE OR REPLACE VIEW MATERIAL_EMAILS_D1B10DA3_41 AS 
SELECT
    *
FROM
    DEMO_DB.DAVID_T.EMAILS

WHERE
    
        ((
         DATE <= '2023-09-20T14:04:30.026645Z'
        )
         OR DATE IS NULL )
    

;  
                
            
        
    
        
            
                
                
   CREATE OR REPLACE VIEW MATERIAL_SF_OPPORTUNITY_6B36E39E_41 AS 
SELECT
    *
FROM
    RUDDER_SALESFORCE.PUBLIC.SF_OPPORTUNITY

WHERE
    
        ((
         CREATED_DATE <= '2023-09-20T14:04:30.026645Z'
        )
         OR CREATED_DATE IS NULL )
    

;  
                
            
        
    
        
            
                
                
   CREATE OR REPLACE VIEW MATERIAL_SF_ACCOUNT_D72E7994_41 AS 
SELECT
    *
FROM
    DEMO_DB.DAVID_T.SF_ACCOUNT

WHERE
    
        ((
         CREATED_DATE <= '2023-09-20T14:04:30.026645Z'
        )
         OR CREATED_DATE IS NULL )
    

;  
                
            
        
    
        
            
                
                
   CREATE OR REPLACE VIEW MATERIAL_OTHER_TASKS_D1B10DA3_41 AS 
SELECT
    *
FROM
    DEMO_DB.DAVID_T.OTHER_SF_TASKS

WHERE
    
        ((
         DATE <= '2023-09-20T14:04:30.026645Z'
        )
         OR DATE IS NULL )
    

;  
                
            
        
    
        
            
                
                
   CREATE OR REPLACE VIEW MATERIAL_GONG_CALLS_D1B10DA3_41 AS 
SELECT
    *
FROM
    DEMO_DB.DAVID_T.GONG_CALLS

WHERE
    
        ((
         DATE <= '2023-09-20T14:04:30.026645Z'
        )
         OR DATE IS NULL )
    

;  
                
            
        
    

        
    

			/* Set template variables */




    







/* Macros */
























/* endMacros */




   BEGIN

    
        
        
        
        
    
        
            DECLARE 
	is_not_converged_var  DEFAULT True;
	iter_var INTEGER DEFAULT 0;
	max_iter_var INTEGER DEFAULT 30;
	
            BEGIN 
    BEGIN

    
    
   CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_EDGES_RAW 
        (
            id1 varchar,
            id1_type varchar,
            id2 varchar,
            id2_type varchar,
            valid_at timestamp)
    ;  

    
        
            
                
    
        
            
                
                    
                        INSERT INTO MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_EDGES_RAW (id1, id1_type, id2, id2_type, valid_at)
                            WITH temporary_IDedges as (
                            SELECT
                                ACCOUNT_ID AS id1_temp,
                                'salesforce_id' AS id1_type,
                                ACCOUNT_ID AS id2_temp,
                                'salesforce_id' AS id2_type,
                                MIN(CREATED_DATE)::timestamp AS valid_at
                            FROM MATERIAL_SF_OPPORTUNITY_6B36E39E_41
                            
                            GROUP BY id1_temp, id2_temp)
                            SELECT id1_temp, id1_type, id2_temp, id2_type, valid_at FROM temporary_IDedges
                            WHERE
                                id1_temp IS NOT NULL
                                AND id1_type IS NOT NULL
                                AND id2_temp IS NOT NULL
                                AND id2_type IS NOT NULL
                        ;
                    
                
            
        
    

            
        
    
        
            
                
    
        
            
                
                    
                        INSERT INTO MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_EDGES_RAW (id1, id1_type, id2, id2_type, valid_at)
                            WITH temporary_IDedges as (
                            SELECT
                                case when account_status_c is not null then "ID" when record_type_id <> '0125x0000006uLeAAI' then "ID" when is_deleted = FALSE then "ID" end AS id1_temp,
                                'salesforce_id' AS id1_type,
                                case when account_status_c is not null then "ID" when record_type_id <> '0125x0000006uLeAAI' then "ID" when is_deleted = FALSE then "ID" end AS id2_temp,
                                'salesforce_id' AS id2_type,
                                MIN(CREATED_DATE)::timestamp AS valid_at
                            FROM MATERIAL_SF_ACCOUNT_D72E7994_41
                            
                            GROUP BY id1_temp, id2_temp)
                            SELECT id1_temp, id1_type, id2_temp, id2_type, valid_at FROM temporary_IDedges
                            WHERE
                                id1_temp IS NOT NULL
                                AND id1_type IS NOT NULL
                                AND id2_temp IS NOT NULL
                                AND id2_type IS NOT NULL
                        ;
                    
                
            
        
    

            
        
    
        
            
                
    
        
            
                
                    
                        INSERT INTO MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_EDGES_RAW (id1, id1_type, id2, id2_type, valid_at)
                            WITH temporary_IDedges as (
                            SELECT
                                SALESFORCE_ID AS id1_temp,
                                'salesforce_id' AS id1_type,
                                SALESFORCE_ID AS id2_temp,
                                'salesforce_id' AS id2_type,
                                MIN(DATE)::timestamp AS valid_at
                            FROM MATERIAL_GONG_CALLS_D1B10DA3_41
                            
                            GROUP BY id1_temp, id2_temp)
                            SELECT id1_temp, id1_type, id2_temp, id2_type, valid_at FROM temporary_IDedges
                            WHERE
                                id1_temp IS NOT NULL
                                AND id1_type IS NOT NULL
                                AND id2_temp IS NOT NULL
                                AND id2_type IS NOT NULL
                        ;
                    
                
            
        
    

            
        
    
        
            
                
    
        
            
                
                    
                        INSERT INTO MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_EDGES_RAW (id1, id1_type, id2, id2_type, valid_at)
                            WITH temporary_IDedges as (
                            SELECT
                                SALESFORCE_ID AS id1_temp,
                                'salesforce_id' AS id1_type,
                                SALESFORCE_ID AS id2_temp,
                                'salesforce_id' AS id2_type,
                                MIN(DATE)::timestamp AS valid_at
                            FROM MATERIAL_EMAILS_D1B10DA3_41
                            
                            GROUP BY id1_temp, id2_temp)
                            SELECT id1_temp, id1_type, id2_temp, id2_type, valid_at FROM temporary_IDedges
                            WHERE
                                id1_temp IS NOT NULL
                                AND id1_type IS NOT NULL
                                AND id2_temp IS NOT NULL
                                AND id2_type IS NOT NULL
                        ;
                    
                
            
        
    

            
        
    
        
            
                
    
        
            
                
                    
                        INSERT INTO MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_EDGES_RAW (id1, id1_type, id2, id2_type, valid_at)
                            WITH temporary_IDedges as (
                            SELECT
                                SALESFORCE_ID AS id1_temp,
                                'salesforce_id' AS id1_type,
                                SALESFORCE_ID AS id2_temp,
                                'salesforce_id' AS id2_type,
                                MIN(DATE)::timestamp AS valid_at
                            FROM MATERIAL_OTHER_TASKS_D1B10DA3_41
                            
                            GROUP BY id1_temp, id2_temp)
                            SELECT id1_temp, id1_type, id2_temp, id2_type, valid_at FROM temporary_IDedges
                            WHERE
                                id1_temp IS NOT NULL
                                AND id1_type IS NOT NULL
                                AND id2_temp IS NOT NULL
                                AND id2_type IS NOT NULL
                        ;
                    
                
            
        
    

            
        
    

    DELETE FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_EDGES_RAW WHERE
        id1_type NOT IN (
    'salesforce_id'
)
        OR id2_type NOT IN (
    'salesforce_id'
);

        
            
            
                DELETE FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_EDGES_RAW WHERE NOT (
    
    (
        id1_type != 'salesforce_id' OR
        NOT
        (
            
            id1 = ''
            
            
        )
    )

    AND 
    (
        id2_type != 'salesforce_id' OR
        NOT
        (
            
            id2 = ''
            
            
        )
    )

);
            
            
        

        
        
            
   CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_EDGES AS 
            SELECT
                id1,
                id1_type,
                id2,
                id2_type,
                LEAST(
                    
    
    'rid' || left(sha1(concat(left(sha1('fe971b24-9572-4005-b22f-351e9c09274d' || NVL(id1,'')),32),NVL(id1_type,''))),32)
    
,
                    
    
    'rid' || left(sha1(concat(left(sha1('fe971b24-9572-4005-b22f-351e9c09274d' || NVL(id2,'')),32),NVL(id2_type,''))),32)
    

                ) AS account_main_id,
                MIN(valid_at) as valid_at
            FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_EDGES_RAW
            WHERE
                id1 IS NOT NULL
                AND id1_type IS NOT NULL
                AND id2 IS NOT NULL
                AND id2_type IS NOT NULL
            GROUP BY id1, id2, id1_type, id2_type
        ;  
        

        DROP TABLE MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_EDGES_RAW;

        
   CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING 
    (
        node_id varchar,
        node_id_type varchar,
        account_main_id varchar,
        valid_at timestamp,
        account_main_id_dist int,
        stitching_active int)
;  
        
   CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_FINISHED_MAPPING 
    (
        node_id varchar,
        node_id_type varchar,
        account_main_id varchar,
        valid_at timestamp,
        account_main_id_dist int,
        stitching_active int)
;  

        INSERT INTO MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING (
            node_id,
            node_id_type,
            account_main_id,
            valid_at,
            account_main_id_dist,
            stitching_active
        )
        SELECT
            id1 AS node_id,
            id1_type AS node_id_type,
            account_main_id,
            valid_at,
            0 AS account_main_id_dist,
            0 AS stitching_active
        FROM
            MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_EDGES
        UNION ALL
        SELECT
            id2 AS node_id,
            id2_type AS node_id_type,
            account_main_id,
            valid_at,
            0 AS account_main_id_dist,
            0 AS stitching_active
        FROM
            MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_EDGES
        ;

        

        
   CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING AS (
    SELECT
        node_id,
        node_id_type,
        account_main_id,
        valid_at,
        account_main_id_dist,
        0 AS stitching_active
    FROM (
        SELECT
            node_id,
            node_id_type,
            account_main_id,
            valid_at,
            account_main_id_dist,
            row_number() OVER (
                PARTITION BY node_id, node_id_type, account_main_id
                ORDER BY valid_at ASC, account_main_id_dist ASC
            ) AS row_number
        FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING
    )
    WHERE row_number = 1
);  

        

    /* Set which clusters are actively stitching */
    
   CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING AS (
    SELECT
        node_id,
        node_id_type,
        account_main_id,
        account_main_id_dist,
        valid_at,
        MAX(stitching_active) OVER (PARTITION BY account_main_id) AS stitching_active
    FROM (
        SELECT
            node_id,
            node_id_type,
            account_main_id,
            account_main_id_dist,
            valid_at,
            CASE
                WHEN min_account_main_id_node = max_account_main_id_node THEN 0
                ELSE 1
                END AS stitching_active
        FROM (
            SELECT
                node_id,
                node_id_type,
                account_main_id,
                account_main_id_dist,
                valid_at,
                MIN(account_main_id) OVER (PARTITION BY node_id, node_id_type) AS min_account_main_id_node,
                MAX(account_main_id) OVER (PARTITION BY node_id, node_id_type) AS max_account_main_id_node
            FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING
        )
    )
);  

    /* Insert converged clusters into finished table */
    INSERT INTO MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_FINISHED_MAPPING (
        node_id, node_id_type, account_main_id, valid_at, account_main_id_dist, stitching_active
    )
    SELECT
        node_id,
        node_id_type,
        account_main_id,
        valid_at,
        account_main_id_dist,
        stitching_active
    FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING
    WHERE stitching_active = 0;

    /* Remove converged clusters from active table */
    DELETE FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING WHERE stitching_active = 0;



        
   WHILE ((iter_var < max_iter_var) AND is_not_converged_var) DO 
    
   iter_var := iter_var + 1;  

    /* Run 1 round of cluster merging as follows
    select distinct new_account_main_id AS account_main_id, node_id into table FROM
        partition mappings by account_main_id (clusters), select min node_account_main_id as new_account_main_id FROM
            partition mappings by node, select min account_main_id as node_account_main_id
    */
    
    
   CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING AS (
    SELECT DISTINCT
        node_id,
        node_id_type,
        CASE
            WHEN new_account_main_id < account_main_id THEN new_account_main_id
            ELSE account_main_id
            END AS account_main_id,
        CASE
            WHEN new_account_main_id < account_main_id THEN
                CASE
                    WHEN new_valid_at is NULL or valid_at is NULL THEN NULL
                        ELSE GREATEST(new_valid_at, valid_at)
                END
            ELSE valid_at
            END AS valid_at,
        CASE
            WHEN new_account_main_id < account_main_id THEN new_account_main_id_dist + 1
            ELSE account_main_id_dist
            END AS account_main_id_dist,
        0 AS stitching_active
    FROM (
        SELECT
            node_id,
            node_id_type,
            account_main_id,
            valid_at,
            account_main_id_dist,
            FIRST_VALUE(new_account_main_id) over(
                PARTITION BY account_main_id
                ORDER BY
                    new_account_main_id ASC,
                    new_valid_at ASC,
                    new_account_main_id_dist ASC
                ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
            ) AS new_account_main_id,
            FIRST_VALUE(new_valid_at) over(
                PARTITION BY account_main_id
                ORDER BY
                    new_account_main_id ASC,
                    new_valid_at ASC,
                    new_account_main_id_dist ASC
                ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
            ) AS new_valid_at,
            FIRST_VALUE(new_account_main_id_dist) over(
                PARTITION BY account_main_id
                ORDER BY
                    new_account_main_id ASC,
                    new_valid_at ASC,
                    new_account_main_id_dist ASC
                ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
            ) AS new_account_main_id_dist
        FROM (
            SELECT
                *,
                FIRST_VALUE(account_main_id) over(
                    PARTITION BY node_id, node_id_type
                    ORDER BY
                        account_main_id ASC,
                        valid_at ASC,
                        account_main_id_dist ASC
                    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
                ) AS new_account_main_id,
                FIRST_VALUE(valid_at) over(
                    PARTITION BY node_id, node_id_type
                    ORDER BY
                        account_main_id ASC,
                        valid_at ASC,
                        account_main_id_dist ASC
                    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
                ) AS new_valid_at,
                FIRST_VALUE(account_main_id_dist) over(
                    PARTITION BY node_id, node_id_type
                    ORDER BY
                        account_main_id ASC,
                        valid_at ASC,
                        account_main_id_dist ASC
                    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
                ) AS new_account_main_id_dist
            FROM
                MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING
        )
    )
    );  

    

    /* Set which clusters are actively stitching */
    
   CREATE OR REPLACE TEMPORARY TABLE MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING AS (
    SELECT
        node_id,
        node_id_type,
        account_main_id,
        account_main_id_dist,
        valid_at,
        MAX(stitching_active) OVER (PARTITION BY account_main_id) AS stitching_active
    FROM (
        SELECT
            node_id,
            node_id_type,
            account_main_id,
            account_main_id_dist,
            valid_at,
            CASE
                WHEN min_account_main_id_node = max_account_main_id_node THEN 0
                ELSE 1
                END AS stitching_active
        FROM (
            SELECT
                node_id,
                node_id_type,
                account_main_id,
                account_main_id_dist,
                valid_at,
                MIN(account_main_id) OVER (PARTITION BY node_id, node_id_type) AS min_account_main_id_node,
                MAX(account_main_id) OVER (PARTITION BY node_id, node_id_type) AS max_account_main_id_node
            FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING
        )
    )
);  

    /* Insert converged clusters into finished table */
    INSERT INTO MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_FINISHED_MAPPING (
        node_id, node_id_type, account_main_id, valid_at, account_main_id_dist, stitching_active
    )
    SELECT
        node_id,
        node_id_type,
        account_main_id,
        valid_at,
        account_main_id_dist,
        stitching_active
    FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING
    WHERE stitching_active = 0;

    /* Remove converged clusters from active table */
    DELETE FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING WHERE stitching_active = 0;



    
   SELECT not_converged INTO :is_not_converged_var FROM (SELECT COUNT(*) > 0 AS not_converged FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING);  
 END WHILE;  

        
   CREATE OR REPLACE TABLE MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_MAPPING AS SELECT node_id, node_id_type, account_main_id, valid_at, account_main_id_dist, stitching_active FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_FINISHED_MAPPING UNION ALL SELECT node_id, node_id_type, account_main_id, valid_at, account_main_id_dist, stitching_active FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_ACTIVE_MAPPING;  

        
   CREATE OR REPLACE VIEW MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41 AS 
    WITH ranked_mappings AS (
        SELECT
            account_main_id,
            node_id AS other_id,
            node_id_type AS other_id_type,
            valid_at,
            row_number() OVER (
                PARTITION BY node_id, node_id_type, account_main_id
                ORDER BY
                 valid_at ASC
            ) AS row_number
        FROM MATERIAL_ACCOUNT_ID_STITCHER_53876BCA_41_INTERNAL_MAPPING
    )
    SELECT
        account_main_id,
        other_id,
        other_id_type,
        valid_at
    FROM ranked_mappings
    WHERE row_number = 1
;  

    END;
 END;
        
    

	END;  

			
    
        
            
    
        
    
        
    
        
    
        
    
        
    
        
            
                
   DROP VIEW IF EXISTS MATERIAL_EMAILS_D1B10DA3_41;  
            
        
    
        
            
                
   DROP VIEW IF EXISTS MATERIAL_SF_OPPORTUNITY_6B36E39E_41;  
            
        
    
        
            
                
   DROP VIEW IF EXISTS MATERIAL_SF_ACCOUNT_D72E7994_41;  
            
        
    
        
            
                
   DROP VIEW IF EXISTS MATERIAL_OTHER_TASKS_D1B10DA3_41;  
            
        
    
        
            
                
   DROP VIEW IF EXISTS MATERIAL_GONG_CALLS_D1B10DA3_41;  
            
        
    

        
    
 
	
	END;  
	