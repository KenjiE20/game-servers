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

Use down & up for resetting fetchr server
```
sudo docker compose --project-directory /home/ubuntu/mc-<example> down && sudo docker compose --project-directory /home/ubuntu/mc-<example> up -d
```

Auto volume pruning (0500)
Clears the hanging fetchr volumes
```
0 5 * * * sudo docker volume prune -f --filter "until=72h"
```