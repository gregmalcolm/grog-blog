namespace('db') do
  task('after_drop') do
    if adapter == "postgresql"
      system("psql -c \"drop role #{role_name};\" template1")
    end
  end
end
