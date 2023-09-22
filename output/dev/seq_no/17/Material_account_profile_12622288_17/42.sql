
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_17New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_17
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_12622288_17_INTERNAL_EV_SF_ACCOUNT_CREATED_BY_ID USING (account_main_id)
              );
              