
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_14New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_14
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_C0DF5882_14_INTERNAL_EV_SF_ACCOUNT_ACCOUNT_STATUS_C USING (account_main_id)
              );
              