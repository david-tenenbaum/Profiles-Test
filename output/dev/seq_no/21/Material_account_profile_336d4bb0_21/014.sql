
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_21New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_21
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_336D4BB0_21_INTERNAL_EV_SF_OPPORTUNITY_ACCOUNT_ID USING (account_main_id)
              );
              