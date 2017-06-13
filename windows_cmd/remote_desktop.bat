@echo off

cmdkey /generic:"xxx.xxx.xxx.xxx" /user:"id" /pass:"password"
start "" mstsc /v:"xxx.xxx.xxx.xxx:port"

