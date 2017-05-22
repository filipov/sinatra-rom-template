# Настройка хранилища для ROM
STORAGE = ROM.container(:sql, ENV['DB_URL']) do |config|
  config.register_relation(Apps)
end
