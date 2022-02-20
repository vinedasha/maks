import numpy as np
import matplotlib.pyplot as mp
import psycopg2

con = psycopg2.connect("dbname=g484-serebryakov user=postgres password=password host=127.0.0.1 port=5432")

cur = con.cursor()
cur.execute("select datetime, height from noaa_sample.data where station_id = '21415';")
lst = cur.fetchall()
cur.close()
con.close()

x, y = np.array(lst).T

mp.plot(x, y, c='#ff0077', linewidth=1.0)
mp.title('station 21415')
mp.xlabel('time')
mp.ylabel('height')

mp.grid(True, which='both')
mp.show()







