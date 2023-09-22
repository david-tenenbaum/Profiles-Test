
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_30New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_30
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_082DF75F_30_INTERNAL_EV_SF_OPPORTUNITY_MOST_RECENT_LEAD_SOURCE USING (account_main_id)
              );
              