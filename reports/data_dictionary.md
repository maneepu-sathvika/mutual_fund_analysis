# Mutual Fund Analytics Data Dictionary

## 02_nav_history.csv

| Column    | Data Type | Description                   |
| --------- | --------- | ----------------------------- |
| amfi_code | Integer   | Unique mutual fund identifier |
| date      | Date      | NAV date                      |
| nav       | Float     | Net Asset Value of scheme     |

## 08_investor_transactions.csv

| Column           | Data Type | Description                |
| ---------------- | --------- | -------------------------- |
| investor_id      | String    | Unique investor identifier |
| transaction_date | Date      | Transaction date           |
| amfi_code        | Integer   | Scheme identifier          |
| transaction_type | String    | SIP, Lumpsum, Redemption   |
| amount_inr       | Integer   | Transaction amount         |
| state            | String    | Investor state             |
| city             | String    | Investor city              |
| city_tier        | String    | Tier classification        |
| kyc_status       | String    | KYC verification status    |

## 07_scheme_performance.csv

| Column            | Data Type | Description              |
| ----------------- | --------- | ------------------------ |
| amfi_code         | Integer   | Scheme identifier        |
| scheme_name       | String    | Scheme name              |
| fund_house        | String    | AMC name                 |
| return_1yr_pct    | Float     | One-year return          |
| return_3yr_pct    | Float     | Three-year return        |
| return_5yr_pct    | Float     | Five-year return         |
| expense_ratio_pct | Float     | Expense ratio percentage |
| aum_crore         | Integer   | Assets under management  |

## 03_aum_by_fund_house.csv

| Column         | Data Type | Description       |
| -------------- | --------- | ----------------- |
| date           | Date      | Reporting date    |
| fund_house     | String    | Fund house name   |
| aum_lakh_crore | Float     | AUM in lakh crore |
| aum_crore      | Integer   | AUM in crore      |
| num_schemes    | Integer   | Number of schemes |
