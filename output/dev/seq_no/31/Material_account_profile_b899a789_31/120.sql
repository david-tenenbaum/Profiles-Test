
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_31New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_31
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_B899A789_31_INTERNAL_EV_SF_OPPORTUNITY_POC_STARTED_DATE_C USING (account_main_id)
              );
              