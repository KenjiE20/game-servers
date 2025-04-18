END_TIME=$(date +"%s")

MC_BACKUP_START_TIME=$(cat /tmp/MC_BACKUP_START_TIME)
TIME_DELTA=$((END_TIME - MC_BACKUP_START_TIME))

rcon-cli "tellraw @a [\"\",{\"text\":\"[Backup] \",\"italic\":true,\"color\":\"gray\"},{\"text\":\"Backup complete\",\"italic\":true,\"color\":\"green\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"$TIME_DELTA s\"}}]"