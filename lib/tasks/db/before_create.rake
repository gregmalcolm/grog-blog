namespace('db') do
  task('before_create') do
    if adapter == "postgresql"
      system("psql -c \"create role #{role_name} with createdb login;\" template1")
    end
  end
end
