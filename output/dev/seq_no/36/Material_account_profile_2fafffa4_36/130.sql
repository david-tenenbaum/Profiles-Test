
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_36New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_36
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_2FAFFFA4_36_INTERNAL_EV_SF_OPPORTUNITY_POC_STARTED_DATE_C USING (account_main_id)
              );
              