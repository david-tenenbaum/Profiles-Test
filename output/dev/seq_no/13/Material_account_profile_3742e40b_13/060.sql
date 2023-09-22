
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_13New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_13
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_3742E40B_13_INTERNAL_EV_SF_OPPORTUNITY_AMOUNT USING (account_main_id)
              );
              