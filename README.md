# openlist-render
OpenList Render Cloud deployment template with custom database

Tested with **Supabase PostgreSQL session pooler method** over IPv4 connection

### Database template

    {
      "database": {
        "type": "DB_TYPE",
        "host": "DB_HOST",
        "port": DB_PORT,
        "user": "DB_USER",
        "password": "DB_PASSWD",
        "name": "DB_NAME",
        "table_prefix": "x_",
        "ssl_mode": "prefer"
      }
    }

<br>


### Environment variable

Set admin password **if there was no password** in the database previously

    OPENLIST_ADMIN_PASSWORD="PASSWD_HERE"

<br>


**Timezone**

    TZ=Asia/Jakarta

<br>


**Default env**

    UMASK=022
