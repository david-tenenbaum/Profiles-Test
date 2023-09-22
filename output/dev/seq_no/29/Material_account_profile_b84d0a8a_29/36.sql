
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_29New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_29
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_B84D0A8A_29_INTERNAL_EV_SF_ACCOUNT_OWNER_ID USING (account_main_id)
              );
              