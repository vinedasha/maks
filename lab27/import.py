import psycopg2

con = psycopg2.connect("dbname=g484-serebryakov user=postgres password=password host=127.0.0.1 port=5432")

cur = con.cursor()
cur.execute("select id from noaa_sample.stations_w_dart_data;")
lst = cur.fetchall()

n = len(lst)
for i in range(0,n):
	id = lst[i][0]
	print(f"importint{id} ({i + 1}/{n})")
	
	f = open(f"data/{id}.txt", "r")
	row = f.read().split("\n")
	f.close()
	sql = "insert into noaa_sample.data(station_id, datetime, height, t) values"
	
	m = len(row)-1
	for j in range (2, m):
		all = row[j].split(" ")
		col = list(filter(None, all))
		dt = f"'{col[0]}-{col[1]}-{col[2]} {col[3]}:{col[4]}:{col[5]}'"
		t = col[6]
		height = col[7]
		if height == "MM":
			height = "NULL"
		sql += f"({id},{dt},{height},{t})"
		if j < m - 1:
			sql += ", "
	sql = sql + " ON CONFLICT (station_id, datetime) do nothing;"
	cur= con.cursor()
	res = cur.execute(sql)
	res = cur.rowcount
	print(res, len(row)-3)
	
	con.commit()

cur.close()
con.close()








