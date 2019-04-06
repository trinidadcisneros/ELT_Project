import pandas as pd

df = pd.read_csv("Resources/state_M2017_dl.csv")

df["OCC_TITLE"].value_counts()

new_df = df[df["OCC_CODE"].str.contains("^15")]

final_df = new_df.rename(columns={"H_MEDIAN": "HOURLY_MEDIAN", "A_MEDIAN": "ANNUAL_MEDIAN", "OCC_CODE": "OCCUPATION_CODE", "OCC_TITLE": "OCCUPATION_TITLE"})

final_df.drop(columns=["ANNUAL", "HOURLY"])