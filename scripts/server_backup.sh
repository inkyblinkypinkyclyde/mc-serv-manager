#!/bin/bash
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] starting server backup" >> /home/richardgannon/mcserv/backups/log.txt
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] stopping docker container" >> /home/richardgannon/mcserv/backups/log.txt
docker stop mc
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] docker container stopped successfully" >> /home/richardgannon/mcserv/backups/log.txt
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] generating whole server backup" >> /home/richardgannon/mcserv/backups/log.txt
tar -cjf /home/richardgannon/mcserv_backups/server_backup_$(date +"%Y-%m-%d_%H:%M:%S").tar.gz /home/richardgannon/mcserv/data
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] completed backup" >> /home/richardgannon/mcserv/backups/log.txt
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] starting docker container" >> /home/richardgannon/mcserv/backups/log.txt
docker start mc
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] docker container started successfully" >> /home/richardgannon/mcserv/backups/log.txt
