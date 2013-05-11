class SetupHstore < ActiveRecord::Migration
  def self.up
    system("psql template1 -c 'create extension hstore;'")
  end

  def self.down
    system("psql template1 -c 'drop extension hstore;'")
  end
end
