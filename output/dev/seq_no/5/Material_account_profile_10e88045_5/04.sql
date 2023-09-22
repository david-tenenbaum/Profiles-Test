
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_5New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_5
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_10E88045_5_INTERNAL_EV_SF_ACCOUNT_NAME USING (account_main_id)
              );
              