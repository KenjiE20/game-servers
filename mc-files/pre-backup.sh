rcon-cli "tellraw @a [\"\",{\"text\":\"[Backup] \",\"italic\":true,\"color\":\"gray\"},{\"text\":\"Starting backup...\",\"italic\":true,\"color\":\"gray\"}]"

MC_BACKUP_START_TIME=$(date +"%s")
echo "$MC_BACKUP_START_TIME" > /tmp/MC_BACKUP_START_TIME