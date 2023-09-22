
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_10New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_10
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_227A6CFC_10_INTERNAL_EV_SF_OPPORTUNITY_TYPE USING (account_main_id)
              );
              