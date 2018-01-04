# This ruby script allows the user to execute test kitchen against any .kitchen file within the current working directory.

puts "What .kitchen.yml file should we use?"
kitchen_yml = gets.chomp
puts "Using .kitchen-#{ kitchen_yml }.yml"
puts "What kitchen command are we using?"
kitchen_cmd = gets.chomp
puts "Using #{ kitchen_cmd }"
puts "Executing the following: KITCHEN_YAML=\".kitchen-#{ kitchen_yml }.yml\" kitchen #{ kitchen_cmd }"
exec "KITCHEN_YAML=\".kitchen-#{ kitchen_yml }.yml\" kitchen #{ kitchen_cmd }"