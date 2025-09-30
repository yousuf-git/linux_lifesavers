# Connect to PostgreSQL
psql -U postgres

psql -h <host> -p <port> -U <username> <database>

# Query to list all databases and their sizes

psql -U postgres -c "SELECT d.datname AS database_name, pg_size_pretty(pg_database_size(d.datname)) AS size FROM pg_database d ORDER BY pg_database_size(d.datname) DESC;"

# list all dbs
\l

# create new db
create database <db_name>

# Connect to a specific database:
\c <dbName>

# List all tables in the current database:
\dt

# See the structure of a table:
\d <tablename>

