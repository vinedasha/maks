python3 convert.py
psql -d g484-serebryakov -f 4_insertintotable.sql
psql -d g484-serebryakov -f 6_createprocedure.sql
python3 import.py
