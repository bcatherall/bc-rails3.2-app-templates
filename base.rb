@template_path = File.dirname(__FILE__)

apply "#{@template_path}/cleanup.rb"
apply "#{@template_path}/rvm.rb"
apply "#{@template_path}/database.rb"
apply "#{@template_path}/gems.rb"
apply "#{@template_path}/rspec.rb"
apply "#{@template_path}/layout.rb"
apply "#{@template_path}/git.rb"