### How to setup

**1. clone source code**

**2. make env file**

```copy .env.sample to .env```

**3. make wp-config.php file**

```copy file src/wp-config-sample.php to src/wp-config.php```

**4. Run docker compose**

```docker-compose up -d  ```

**5. Import DB**

```docker exec -i burnley_street_richmond-db mysql -uwordpress -pwordpress wordpress < ./db-data/wordpress.sql ```

**6. Run site**

Go to http://localhost:9999