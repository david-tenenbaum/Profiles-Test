
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_43New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_43
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_68361BA3_43_INTERNAL_EV_SF_MOST_RECENT_CALL_DATE USING (account_main_id)
              );
              