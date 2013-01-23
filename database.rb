create_file "config/database.yml", :force => true do
"setup: &setup
  adapter: postgresql
  encoding: utf8
  host: localhost
  pool: 5

development:
  <<: *setup
  database: postgresql

test:
  <<: *setup
  database: postgresql

staging:
  <<: *setup
  database: postgresql

production:
  <<: *setup
  database: postgresql
"
end

#unless Gem.available?("pg")
#  run "gem install pg --no-rdoc --no-ri"
#else
#  say("Found pg, skipping installation", :cyan)
#end

inject_into_file "config/application.rb", :after => "config.generators do |generator|\n" do
  (" " * 6) + "generator.orm :active_record\n"
end
