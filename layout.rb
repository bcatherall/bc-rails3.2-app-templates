#TODO: Remove HAML, add bootstrap


inside "app/views/layouts" do
  remove_file "application.html.erb"

  get "#{File.dirname(__FILE__)}/layout.html.erb", "application.html.erb"

  gsub_file "application.html.erb", /<!-- insert javascript here -->\n/, "<%= javascript_include_tag :defaults %>\n"
end
