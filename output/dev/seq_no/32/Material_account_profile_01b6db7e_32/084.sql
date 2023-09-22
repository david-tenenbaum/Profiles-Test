
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_32New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_32
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_01B6DB7E_32_INTERNAL_EV_SF_OPPORTUNITY_IS_WON USING (account_main_id)
              );
              