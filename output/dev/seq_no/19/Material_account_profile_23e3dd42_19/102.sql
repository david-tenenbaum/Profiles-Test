
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_19New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_19
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_23E3DD42_19_INTERNAL_EV_SF_OPPORTUNITY_STAGE_NAME USING (account_main_id)
              );
              