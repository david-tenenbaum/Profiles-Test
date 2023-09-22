
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_28New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_28
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_CD2E2E0A_28_INTERNAL_EV_SF_ACCOUNT_WEBSITE USING (account_main_id)
              );
              