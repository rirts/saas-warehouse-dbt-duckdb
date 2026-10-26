select * from {{ ref('stg_stripe__subscriptions') }}
where (is_active = 0 and (mrr_usd <> 0 or arr_usd <> 0))
   or (is_active = 1 and (mrr_usd is null or arr_usd <> mrr_usd*12))
