set dotenv-load

default: dev

# lists available tasks
@list:
    just --list

# start the server
dev:
    watchexec -re go,html,css,js -- "go build -o /tmp/main cmd/main.go && codesign -s - /tmp/main; /tmp/main"

# open the project in the browser
open:
    open "$PROJECT_URL" -a "Google Chrome Canary"

# start a console
# console:
#     rails console

# run tests
# test:
#     rspec

# Open the DB
# db:
#     pgcli $DATABASE_URL
