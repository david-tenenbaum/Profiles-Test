
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_12New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_12
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_227A6CFC_12_INTERNAL_EV_SF_OPPORTUNITY_IS_WON USING (account_main_id)
              );
              