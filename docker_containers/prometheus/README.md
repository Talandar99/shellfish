# checking targets for prometheus
- go here `http://localhost:9090`
- status > targets

# Graphana default passes
- username : admin
- pasword : admin

# prometheus dashboard setup in gui
- menu > Connections > Data Sources
- add "prometheus"
- in "settings"
    - add "Prometheus server URL" based on target ip 
        - something like this: http://xxx.xxx.xx.xxx:9090
- in "Dashboards"tab
    - import all dashboards
- click save & test to check if you did everything right
- if it works you shoud be able to see your dashboards in "Dashboards" in main menu, and dashboard should show sth
