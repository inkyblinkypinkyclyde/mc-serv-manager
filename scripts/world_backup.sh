#!/bin/bash
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] starting world backup" >> /home/richardgannon/mcserv/backups/log.txt
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] stopping docker container" >> /home/richardgannon/mcserv/backups/log.txt
docker stop mc
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] docker container stopped successfully" >> /home/richardgannon/mcserv/backups/log.txt
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] generating backups for world, nether and end" >> /home/richardgannon/mcserv/backups/log.txt
tar -cjf /home/richardgannon/mcserv/backups/worlds_backup_$(date +"%Y-%m-%d_%H:%M:%S").tar.gz /home/richardgannon/mcserv/data/world /home/richardgannon/mcserv/data/world_nether/ /home/richardgannon/mcserv/data/world_the_end/
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] completed backup" >> /home/richardgannon/mcserv/backups/log.txt
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] starting docker container" >> /home/richardgannon/mcserv/backups/log.txt
docker start mc
echo "[$(date +"%Y-%m-%d_%H:%M:%S")] docker container started successfully" >> /home/richardgannon/mcserv/backups/log.txt

