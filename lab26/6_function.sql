create or replace function lab_partition.f(x float)
returns float
language plpython3u as
$$
	import math 
	p = [1,2,3,4,5,6,7,8]
	h = [4,4,4,2,2,3]
	w = [2,6,3,3,4,6]
	y = 0.0
	for i in range(0, 6):
		y = y + h[i] * math.exp(-math.pow(((x - p[i]) / 10.0) / (w[i] / 100.0), 2.0))
	return y
$$;

select x, lab_partition.f(x) from generate_series(1, 8) as x;