
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_41New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_41
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_CC263A90_41_INTERNAL_EV_SF_CALL_COUNT_LAST_30 USING (account_main_id)
              );
              