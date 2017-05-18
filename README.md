# CLI

```bash
# запуск приложения
shotgun config.ru

# запуск тестирования на соответсвие style guide
rubocop

# запуск автоматического тестирования приложения
rake test

## для работы с бд необходимо (пока что) `создать ее ручками`
# создание миграции `create_users`
rake db:create_migration[create_users]

# выполнение миграций
rake db:migrate

# удаление всех таблиц и выполнение миграций (плохой подход)
rake db:reset
```