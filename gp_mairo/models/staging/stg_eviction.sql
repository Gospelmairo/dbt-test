with source as (

    select * from {{ source('Alt_engin', 'eviction_data') }}

),

renamed as (

    select
        eviction_id,
        address,
        city,
        state,
        zip,
        file_date,
        non_payment,
        breach,
        nuisance,
        illegal_use,
        failure_to_sign_renewal,
        access_denial,
        unapproved_subtenant,
        owner_move_in,
        demolition,
        capital_improvement,
        substantial_rehab,
        ellis_act_withdrawal,
        condo_conversion,
        roommate_same_unit,
        other_cause,
        late_payments,
        lead_remediation,
        development,
        good_samaritan_ends,
        supervisor_district,
        neighborhood,
        client_location,
        shape,
        constraints_date

    from source

)


select * from renamed











-- WITH source AS (
--     SELECT * FROM {{ source('Alt_engin', 'eviction_data') }}
-- ),
-- renamed AS (
--     SELECT
--         {{ adapter.quote("eviction_id") }},
--         {{ adapter.quote("address") }},
--         {{ adapter.quote("city") }},
--         {{ adapter.quote("state") }},
--         {{ adapter.quote("zip") }},
--         {{ adapter.quote("file_date") }},
--         {{ adapter.quote("non_payment") }},
--         {{ adapter.quote("breach") }},
--         {{ adapter.quote("nuisance") }},
--         {{ adapter.quote("illegal_use") }},
--         {{ adapter.quote("failure_to_sign_renewal") }},
--         {{ adapter.quote("access_denial") }},
--         {{ adapter.quote("unapproved_subtenant") }},
--         {{ adapter.quote("owner_move_in") }},
--         {{ adapter.quote("demolition") }},
--         {{ adapter.quote("capital_improvement") }},
--         {{ adapter.quote("substantial_rehab") }},
--         {{ adapter.quote("ellis_act_withdrawal") }},
--         {{ adapter.quote("condo_conversion") }},
--         {{ adapter.quote("roommate_same_unit") }},
--         {{ adapter.quote("other_cause") }},
--         {{ adapter.quote("late_payments") }},
--         {{ adapter.quote("lead_remediation") }},
--         {{ adapter.quote("development") }},
--         {{ adapter.quote("good_samaritan_ends") }},
--         {{ adapter.quote("supervisor_district") }},
--         {{ adapter.quote("neighborhood") }},
--         {{ adapter.quote("constraints_date") }},
--        -- client_location.human_address AS human_address,
--         client_location.latitude AS latitude,
--         client_location.longitude AS longitude
--     FROM source
-- )

-- SELECT *
-- FROM renamed