
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_35New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_35
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_E6A3C9DC_35_INTERNAL_EV_SF_ACCOUNT_INDUSTRY USING (account_main_id)
              );
              