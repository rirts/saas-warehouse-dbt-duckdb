select sum(mrr_usd) as current_mrr_usd,sum(arr_usd) as current_arr_usd,count(*) filter(where is_active=1) as active_subscriptions
from {{ ref('int_billing__subscriptions_enriched') }}
