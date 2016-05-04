#!/bin/bash
#backup dabatase musicdb
FechaHora=$(date +%d-%m-%Y_%H:%M:%S)
pg_dump -i -h localhost --port 5432 -U postgres -F p -b -v -f "/home/backups/musicdb_$FechaHora.sql" musicdb
pg_dump -i -h localhost --port 5432 -U postgres -F c -b -v -f "/home/backups/musicdb_$FechaHora.backup" musicdb
