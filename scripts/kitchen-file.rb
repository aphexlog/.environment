# This ruby script allows the user to execute test kitchen against any .kitchen file within the current working directory.

puts "What kitchen.yml file should we use?"
kitchen_yml = gets.chomp
puts "Using #{ kitchen_yml }"
puts "What kitchen command are we using?"
kitchen_cmd = gets.chomp
puts "Using #{ kitchen_cmd }"
exec "KITCHEN_YAML=\"#{ kitchen_yml }\" #{ kitchen_cmd }"