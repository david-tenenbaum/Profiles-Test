
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_26New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_26
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_E41DB9BE_26_INTERNAL_EV_SF_ACCOUNT_CREATED_BY_ID USING (account_main_id)
              );
              