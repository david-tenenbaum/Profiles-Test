
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_40New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_40
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_CC263A90_40_INTERNAL_EV_SF_ACCOUNT_OWNER_ID USING (account_main_id)
              );
              