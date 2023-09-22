
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_30New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_30
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_082DF75F_30_INTERNAL_EV_SF_ACCOUNT_OWNER_ID USING (account_main_id)
              );
              