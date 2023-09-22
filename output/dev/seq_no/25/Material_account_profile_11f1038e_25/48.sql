
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_25New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_25
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_11F1038E_25_INTERNAL_EV_SF_ACCOUNT_LAST_ACTIVITY_DATE USING (account_main_id)
              );
              