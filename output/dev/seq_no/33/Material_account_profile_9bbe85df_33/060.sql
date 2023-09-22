
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_33New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_33
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_9BBE85DF_33_INTERNAL_EV_SF_ACCOUNT_COMPANY_TYPE_C USING (account_main_id)
              );
              