select * from {{ ref('int_crm__deals_enriched') }}
where annual_contract_value is not null or total_contract_value is not null
