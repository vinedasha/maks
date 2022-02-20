create or replace procedure noaa_sample.download_dart_data() language plpython3u as
$$
	import urllib.request as req
	lst = plpy.execute("select id from noaa_sample.stations_w_dart_data;")
	n = len(lst)
	for i in range(0, n):
		id = lst[i]["id"]
		plpy.notice(f"downloading {id} ({i + 1} / {n})")
		req.urlretrieve(f"https://www.ndbc.noaa.gov/data/realtime2/{id}.dart", f"/home/user/lab27/data/{id}.txt")
$$;
call noaa_sample.download_dart_data();