
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_38New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_38
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_789394E3_38_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_NEXT_STEP USING (account_main_id)
              );
              