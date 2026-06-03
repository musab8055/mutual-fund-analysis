
# Data Dictionary

## dim_fund

| Column | Type | Description |
|----------|----------|----------|
| amfi_code | INTEGER | Unique fund code |
| scheme_name | TEXT | Mutual fund scheme |
| category | TEXT | Fund category |
| fund_house | TEXT | AMC name |

## fact_nav

| Column | Type | Description |
|----------|----------|----------|
| amfi_code | INTEGER | Fund code |
| date | DATE | NAV date |
| nav | REAL | Net Asset Value |

## fact_transactions

| Column | Type | Description |
|----------|----------|----------|
| investor_id | INTEGER | Investor identifier |
| transaction_date | DATE | Transaction date |
| transaction_type | TEXT | SIP/Lumpsum/Redemption |
| amount | REAL | Transaction amount |

## fact_performance

| Column | Type | Description |
|----------|----------|----------|
| return_1y | REAL | One year return |
| return_3y | REAL | Three year return |
| return_5y | REAL | Five year return |
| expense_ratio | REAL | Fund expense ratio |

## fact_aum

| Column | Type | Description |
|----------|----------|----------|
| aum | REAL | Assets Under Management |
