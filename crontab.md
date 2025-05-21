Add this to crontab for auto reboots

Daily

```cron
# Restart active server (0430)
30 4 * * * sudo docker compose --project-directory /home/ubuntu/mc-<example> restart
```

Weekly (Sunday)

```cron
# Restart active server (0430)
30 4 * * 0 sudo docker compose --project-directory /home/ubuntu/mc-<example> restart
```

Monthly (1st)

```cron
# Restart active server (0430)
30 4 1 * * sudo docker compose --project-directory /home/ubuntu/mc-<example> restart
```

Use down & up for resetting fetchr server

```cron
30 4 * * * sudo docker compose --project-directory /home/ubuntu/mc-<example> down && sudo docker compose --project-directory /home/ubuntu/mc-<example> up -d
```

Auto volume pruning (0500)
Clears the hanging fetchr volumes

```cron
0 5 * * * sudo docker volume prune -f
```
