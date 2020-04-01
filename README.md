# ORM demo
###### By Ludvig Albert Rossil Andersen

### Setup of project

#### prerequisites (newer versions might work)
ruby version 2.4.2
rails version 5.2.4

postgresql installed and configured

#### 1: clone project
_git clone https://github.com/ludvigandersen/orm-project.git_

#### 2: Run bundle install command
_bundle install_

#### 3: Setup database
add correct credentials in database.yml:

  username: "your_username"
  
  password: "your_password"

_rails db:setup_

_rails db:migrate_

#### 4: run rails server
_rails s_

default port is 3000, to run on different port:

_rails s -p xxxx_
