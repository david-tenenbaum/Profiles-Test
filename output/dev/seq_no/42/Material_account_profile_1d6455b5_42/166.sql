
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_42New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_42
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_1D6455B5_42_INTERNAL_EV_SF_CALL_COUNT_LAST_14 USING (account_main_id)
              );
              