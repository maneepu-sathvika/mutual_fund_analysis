import requests
import pandas as pd
import os

# Create output folder if it doesn't exist
os.makedirs("data/raw/live_nav", exist_ok=True)

schemes = {
    "HDFC_Top_100": 125497,
    "SBI_Bluechip": 119551,
    "ICICI_Bluechip": 120503,
    "Nippon_Large_Cap": 118632,
    "Axis_Bluechip": 119092,
    "Kotak_Bluechip": 120841
}

for fund_name, amfi_code in schemes.items():

    url = f"https://api.mfapi.in/mf/{amfi_code}"

    try:
        response = requests.get(url)
        response.raise_for_status()

        data = response.json()

        nav_df = pd.DataFrame(data["data"])

        filename = f"data/raw/live_nav/{fund_name}.csv"

        nav_df.to_csv(filename, index=False)

        print(f"✓ Saved {fund_name}.csv")

    except Exception as e:
        print(f"✗ Error fetching {fund_name}: {e}")

print("\nLive NAV fetch completed.")