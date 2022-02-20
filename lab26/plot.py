import psycopg2
import numpy as np
import matplotlib.pyplot as mp
con = psycopg2.connect("dbname=postgres user=postgres host=127.0.0.1 port=5432")
cur = con.cursor()
cur.execute("select x, y from lab_partition.fn order by x;")

arr = cur.fetchall()
print(arr)
cur.close()
con.close()

x, y = np.array(arr).T
mp.plot(x,y,color='#0077ff')
mp.title('curve')
mp.xlabel('x')
mp.ylabel('y = f(x)')
mp.grid(True, which='both')
mp.show()