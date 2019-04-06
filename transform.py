import pandas as pd
import extract

ca_df = final_df[final_df["ST"] == "CA"]
ca_df

occupations = ca_df[["occupation_code", "occupation_title"]].copy()
occupations.reset_index(drop=True, inplace=True)
occupations

yearly_stats = ca_df[["occupation_code", "hourly_median", "annual_median"]].copy()
yearly_stats.reset_index(drop=True, inplace=True)
yearly_stats

cols = ["HOURLY_MEDIAN", "ANNUAL_MEDIAN"]
yearly_stats[cols] = yearly_stats[cols].apply(pd.to_numeric, errors='coerce', axis=1)