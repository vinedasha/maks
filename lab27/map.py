import numpy as np
import matplotlib.pyplot as mp
import psycopg2

for i in range(0,134):
	p = np.load(f"map/coastline-{i}.npz");

	mp.plot(p['x'], p['y'], c='#0077ff', linewidth=1.0)

con = psycopg2.connect("dbname=g484-serebryakov user=postgres password=password host=127.0.0.1 port=5432")

cur = con.cursor()
cur.execute("select lon, lat from noaa_sample.station where type = 'dart' and data = 'y';")
lst = cur.fetchall()
cur.close()
con.close()

x, y = np.array(lst).T
mp.scatter(x, y, s=5, c='#ff0077')
mp.title('coastline')
mp.xlabel('lon')
mp.ylabel('lat')

mp.grid(True, which='both')
mp.show()







