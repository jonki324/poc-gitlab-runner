# poc-gitlab-runner

GitLab Runner の Docker テンプレート

## Getting started

- .env.example をコピーして`REGISTRATION_TOKEN`を追記する
- `docker-compose -f docker-compose.runner.yml up -d --build`で起動する
- `docker exec -it gitlab-runner bash`でランナーに入る
- `./runner_register.sh`を実行しランナーを登録する
