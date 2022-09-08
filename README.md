
![](https://img.shields.io/badge/Microverse-blueviolet)
# Rails Banking App

>Rails Capstone App app is a Ruby on Rails application that keeps track of all your entity and group.

## Link 
[Heroku_link](https://tomb-stone.herokuapp.com/users/sign_in)


## ERD
![image](https://github.com/microverseinc/curriculum-rails/blob/main/recipe-app/images/recipe_erd.png)

### Cloning the project

git clone https://github.com/ger619/rails-capstone.git <Your-Build-Directory>
``` 
- cd rails-capstone
- rails s
```


## Built with
- Ruby 3.1.2 on Rails 7.0.3.1
- PostgreSQL

## Prerequisites

Vscode or RubyMine
Setup

## Install
    Ruby
    Rails
    PostgreSql

### Development Database

```
# Sign into posgresql
su - postgres

# Create user
create user 'user_name' with encrypted password 'mypassword'

# Load the schema
rails db:schema:load

#----- If you want prefer this approach
# Create the database
rake db:create

# Create database Migration
rails db:migrate
```

### Run

```
bundle install

rails s
```

## Run tests
```
bundle install
rspec
```

## Authors

👤 **AbolGer**

- GitHub: [@ger619](https://github.com/ger619)
- Twitter: [@ger_abol](https://twitter.com/ger_abol)
- LinkedIn: [David Ger](https://linkedin.com/in/david-ger-426b4576)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/ger619/rails-capstone/issues).

## Design

Original design idea by [Gregoire Vella](https://www.behance.net/gregoirevella) on Behance.
The Creative Commons license of the design requires that you give appropriate credit to the author. 
## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./MIT.md) licensed.
