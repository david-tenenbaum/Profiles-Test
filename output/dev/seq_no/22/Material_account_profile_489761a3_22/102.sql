
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_22New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_22
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_489761A3_22_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_STAGE_NAME USING (account_main_id)
              );
              