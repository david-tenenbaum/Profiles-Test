
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_45New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_45
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_25BD8D4B_45_INTERNAL_EV_SF_CALL_COUNT_LAST_7 USING (account_main_id)
              );
              