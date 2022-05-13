select sum(case when status = 'success' then amount else 0 end) as total_revenue
from {{ ref('stg_payments') }}