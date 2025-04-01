# External Db Client connect
export the DATABASE_URL in .env file

``` export DATABASE_URL="prisma+postgres://accelerate.prisma-data.net/?api_key=API_KEY" ```

then run 

``` npx @prisma/ppg-tunnel --host 127.0.0.1 --port 52604 ```