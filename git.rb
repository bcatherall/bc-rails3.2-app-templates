
get "#{File.dirname(__FILE__)}/.gitignore", ".gitignore", :force => true

git :init
git :add => "."
git :commit => "-a -m '- initial commit'"
