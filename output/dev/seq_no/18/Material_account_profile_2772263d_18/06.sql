
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_18New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_18
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_2772263D_18_INTERNAL_EV_SF_ACCOUNT_ID USING (account_main_id)
              );
              