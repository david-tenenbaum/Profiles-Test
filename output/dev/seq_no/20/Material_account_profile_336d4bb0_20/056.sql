
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_20New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_20
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_336D4BB0_20_INTERNAL_EV_SF_ACCOUNT_COMPANY_TYPE_C USING (account_main_id)
              );
              