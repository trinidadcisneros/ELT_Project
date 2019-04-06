import pandas as pd
from sqlalchemy import create_engine
import transform

# PyMySQL 
import pymysql
pymysql.install_as_MySQLdb()


rds_connection_string = "root:root@127.0.0.1:3306/tech_occupational_db"
engine = create_engine(f'mysql://{rds_connection_string}')

# Confirm tables
engine.table_names()

# Upload table 1 info
occupations.to_sql(name='occupations', con=engine, if_exists='append', index=False)

pd.read_sql_query('select * from occupations', con=engine).head()

# Upload table 2 info
yearly_stats.to_sql(name='yearly_stats', con=engine, if_exists='append', index=False)

pd.read_sql_query('select * from yearly_stats', con=engine).head()