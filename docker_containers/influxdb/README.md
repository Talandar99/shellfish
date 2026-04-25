# InfluxDB
## Running container
- all database deta are stored in **influxdb3** directory
```bash
docker compose up
# or to run in background
docker compose up -d 
```
## Authentication
- InfluxDB use token as authentication method
- you can get token by invoking cli from docker
- **you only can get token once**
```bash
docker exec -it influxdb3-core influxdb3 create token --admin
```
Checking if token work using curl
```bash
curl http://localhost:8181/health -H "Authorization: Bearer HERE_PASTE_INFLUXDB3_AUTH_TOKEN"
# it's easier to use environment variable
export INFLUXDB3_AUTH_TOKEN='HERE_PASTE_INFLUXDB3_AUTH_TOKEN'
```
## Write / Read (using API connection + curl + environment variable)
write some data
```bash
curl -X POST "http://localhost:8181/api/v3/write_lp?db=mydb" -H "Authorization: Bearer $INFLUXDB3_AUTH_TOKEN" --data-raw "temperature,room=living value=22.5"
```
read some data
```bash
curl -G "http://localhost:8181/api/v3/query_sql" -H "Authorization: Bearer $INFLUXDB3_AUTH_TOKEN" --data-urlencode "db=mydb" --data-urlencode "q=SELECT * FROM temperature"
```
## using jq for better readability
[jq website](https://jqlang.org/)\
data comes from influxdb3 in form of json, you can use jq cli tool to parse it into more readable format\
example command:
```bash
curl -G "http://localhost:8181/api/v3/query_sql" -H "Authorization: Bearer $INFLUXDB3_AUTH_TOKEN" --data-urlencode "db=mydb" --data-urlencode "q=SELECT * FROM temperature" | jq
```
## using influxdb3 from within docker container
```bash
docker exec -it influxdb3-core influxdb3 HERE_GOES_YOUR_COMMANDLINE_ARGUMENT
```
example with --help
```bash
docker exec -it influxdb3-core influxdb3 --help
```
instead of this long command you can also make alias to make your life easier. Like this:
```bash
alias influxdb3='docker exec -it influxdb3-core influxdb3'
```
so now you only need to do this:
```bash
influxdb3 --help
```
you can even execute query (in this step I assume you loaded temperature data before, and setup alias)
```bash
influxdb3 query --database mydb --token "$INFLUXDB3_AUTH_TOKEN" "SELECT * FROM temperature"
```
