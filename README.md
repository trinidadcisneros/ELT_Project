The goal of this activity is to evaluate the current and future labor prospects for jobs/careers in the tech industry, with a particular emphasis on data science and analytics.

Objective: create a database that connected the following table:

Occupations Table:
-ID (Primary Key)
-Occupational ID: OCC_CODE (Foreign Key)
-title
-group

Yearly_stats Table:
-Id (auto-incrementing)
-Occupational ID
-Hourly_Median
-Annual_Median
-Hourly_Mean
-Annual_Mean

Job_listings Table:
-Occupational ID (Foreign Key)
-Result title
-Pay_Range
-Experience
-Education
-location_



The main source of information is obtained from:

Beaurea of labor statitics
https://www.bls.gov/home.htm

List of Occupational Profile Codes
https://www.bls.gov/oes/#data

BROAD DATA

National Occupational Employment Statistics
https://www.bls.gov/oes/current/oes_nat.htm
-To get national occupational statistics tables 
-Method: pd.read_html
-File: National_Occupational_Stats

State Occupational Employment Statistics
-To find by state: https://www.bls.gov/oes/current/oessrcst.htm
-To get the state data
-Method: pd.read_csv method



Computer and Information Research Scientists
-Interesting information on top paying https://www.bls.gov/ooh/computer-and-information-technology/computer-and-information-research-scientists.htm#tab-8

-This link was used to get the "occ-15-1111.xlsx"
https://www.bls.gov/ooh/computer-and-information-technology/computer-and-information-research-scientists.htm#tab-6