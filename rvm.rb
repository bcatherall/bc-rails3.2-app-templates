unless Gem::Specification::find_all_by_name("rvm", ">= 1.0.0").any?
  run "gem install rvm --no-rdoc --no-ri"

  Gem.refresh
  Gem.activate("rvm")
end

require 'rvm'

create_file ".rvmrc" do
  "rvm 1.9.3@#{app_name}"
end

run "rvm rvmrc trust"
run "rvm use 1.9.3@#{app_name} --create"
run "rvm 1.9.3@#{app_name}"
run "rvm gemset load #{app_name}"

RVM.gemset_use! app_name

# Now install the required gems in the new gemset
unless Gem::Specification::find_all_by_name("rails").any?
  run 'gem install rails --no-rdoc --no-ri'
else
  say("Found rails, skipping installation", :cyan)
end