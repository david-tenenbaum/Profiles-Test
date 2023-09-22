
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_16New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_16
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_E818AB5C_16_INTERNAL_EV_SF_ACCOUNT_ACCOUNT_SUB_STATUS_C USING (account_main_id)
              );
              