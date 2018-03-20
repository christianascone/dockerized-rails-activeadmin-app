
# dockerized-rails-activeadmin-app

[![Rails version](https://img.shields.io/badge/rails-5.1.5-red.svg)](https://github.com/christianascone/dockerized-rails-activeadmin-app)
[![GitHub license](https://img.shields.io/github/license/christianascone/dockerized-rails-activeadmin-app.svg)](https://github.com/christianascone/dockerized-rails-activeadmin-app/blob/master/LICENSE)

## Requirements
- [Docker](https://www.docker.com/community-edition)

## Bootstrap

The rails container can be easily started with
```bash
docker-compose up
```

A container with postgres and running rails app will be on, but it needs to be initialized.
Open an interactive bash
```bash
docker-compose run rails_backend bash
```

Configure database
```bash
rake db:create db:migrate db:seed
```

The app will be live.
Visit http://localhost:3000 for default welcome page, then try to login in http://localhost:3000/admin with

* **username**: admin@example.com
* **password**: password

## Services

### Postgres
// TODO

### Ruby on Rails
// TODO


## TODOS

* Ruby version

* Configuration

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ActiveRecord

* ~~ActiveAdmin~~

* Database configuration

## Author

christianascone, ascone.christian@gmail.com

## License

dockerized-rails-activeadmin-app is available under the MIT license. See the [LICENSE](LICENSE) file for more info.