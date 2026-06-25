CREATE TABLE dim_fund (
fund_id INTEGER PRIMARY KEY,
amfi_code INTEGER UNIQUE,
scheme_name TEXT,
fund_house TEXT,
category TEXT
);

CREATE TABLE dim_date (
date_id INTEGER PRIMARY KEY,
full_date DATE,
year INTEGER,
quarter INTEGER,
month INTEGER,
day INTEGER
);

CREATE TABLE fact_nav (
nav_id INTEGER PRIMARY KEY,
amfi_code INTEGER,
date DATE,
nav REAL
);

CREATE TABLE fact_transactions (
transaction_id INTEGER PRIMARY KEY,
investor_id TEXT,
transaction_date DATE,
amfi_code INTEGER,
transaction_type TEXT,
amount_inr REAL,
state TEXT,
city TEXT,
city_tier TEXT,
age_group TEXT,
gender TEXT,
annual_income_lakh REAL,
payment_mode TEXT,
kyc_status TEXT
);

CREATE TABLE fact_performance (
performance_id INTEGER PRIMARY KEY,
amfi_code INTEGER,
return_1yr_pct REAL,
return_3yr_pct REAL,
return_5yr_pct REAL,
benchmark_3yr_pct REAL,
alpha REAL,
beta REAL,
sharpe_ratio REAL,
sortino_ratio REAL,
std_dev_ann_pct REAL,
max_drawdown_pct REAL,
aum_crore REAL,
expense_ratio_pct REAL,
morningstar_rating INTEGER,
risk_grade TEXT
);

CREATE TABLE fact_aum (
aum_id INTEGER PRIMARY KEY,
amfi_code INTEGER,
aum_crore REAL
);
