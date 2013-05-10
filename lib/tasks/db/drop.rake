Rake::Task['db:drop'].enhance do
  Rake::Task['db:after_drop'].invoke
end
