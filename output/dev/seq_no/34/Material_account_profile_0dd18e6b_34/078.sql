
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_34New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_34
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_0DD18E6B_34_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_AMOUNT USING (account_main_id)
              );
              