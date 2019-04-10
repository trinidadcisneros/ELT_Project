import numpy as np
import pandas as pd
from sqlalchemy import create_engine

# PyMySQL 
import pymysql

def load_data_sql(occupations):

    pymysql.install_as_MySQLdb()
    rds_connection_string = "root:root@127.0.0.1:3306/tech_occupational_db"
    engine = create_engine(f'mysql://{rds_connection_string}')

    # occupation data
    occupations.to_sql(name='occupations', con=engine, if_exists='append', index=False)