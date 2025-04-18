Add this to crontab for auto reboots

Daily
```
# Restart active server (0430)
30 4 * * * sudo docker compose --project-directory /home/ubuntu/mc-<example> restart
```

Weekly (Sunday)
```
# Restart active server (0430)
30 4 * * 0 sudo docker compose --project-directory /home/ubuntu/mc-<example> restart
```

Monthly (1st)
```
# Restart active server (0430)
30 4 1 * * sudo docker compose --project-directory /home/ubuntu/mc-<example> restart
```