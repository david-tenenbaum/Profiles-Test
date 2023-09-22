
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_15New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_15
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_61C84E6D_15_INTERNAL_EV_SF_OPPORTUNITY_AMOUNT USING (account_main_id)
              );
              