
              /* Join with single entityvar table and replace old table */
              CREATE TEMPORARY TABLE entityVarTable_account_9af_8New AS (
                  SELECT *
                  FROM
                      entityVarTable_account_9af_8
                      LEFT JOIN MATERIAL_ACCOUNT_PROFILE_074C1E3F_8_INTERNAL_EV_SF_OPPORTUNITY_SEGMENT_CUSTOMER__C USING (account_main_id)
              );
              