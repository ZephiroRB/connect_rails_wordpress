## Import WP
Move database example
`mv config/database.example.yml config/database.yml`

Change the configuration options of the connection to the WordPress database by your own

```
# MySQL. Versions 5.1.10 and up are supported.

default: &default
  adapter: mysql2
  username: user
  password: password
  prefix: wp_
  host: ip
  port: port

development:
  <<: *default
  database: gaceta

test:
  <<: *default
  database: wp_test
  prefix: wp_

production:
  <<: *default
  database: wp_production
```

Install dependencies

`bundle install`

Use config https://github.com/zephiro/rails_wordpress
