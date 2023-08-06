production:
  secret_key_base: 32befab182b41fae07cebc9cb438c44acc415de2a14158d3a6b2380b83cff3f6918f52d3bf1a00b9b25ea879d2749d5559599980fdae4f25e1056040ccd0ee5b
  database:
    adapter: postgresql
    encoding: unicode
    database: <%= ENV['DATABASE_NAME'] %>
    pool: 5
    username: <%= ENV['DATABASE_USERNAME'] %>
    password: <%= ENV['DATABASE_PASSWORD'] %>
    host: <%= ENV['DATABASE_HOST'] %>
    port: <%= ENV['DATABASE_PORT'] %>