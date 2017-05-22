class AppRepo < ROM::Repository[:apps]
  commands :create, update: :by_pk, delete: :by_pk
end
