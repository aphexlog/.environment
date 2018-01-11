# This ruby script allows the user to execute test kitchen against any .kitchen file within the current working directory.
require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: kitchen-opt.rb [options]"

  opts.on('-n', '--name NAME', 'kitchen name. Example: app') { |v| options[:kitchen_name] = v }
  opts.on('-c', '--command COMMAND', 'kitchen command. Example: list') { |v| options[:kitchen_cmd] = v }

end.parse!


if options[:kitchen_name] != nil
    kitchen_yml = options[:kitchen_name]
else
    puts "What .kitchen.yml file should we use?"
    kitchen_yml = gets.chomp
end

if options[:kitchen_cmd] != nil
    kitchen_cmd = options[:kitchen_cmd]
else
    puts "What kitchen command are we using?"
    kitchen_cmd = gets.chomp
end

if options[:kitchen_name] != nil
    k_full_yml = ".kitchen-#{ kitchen_yml }.yml"
else
    k_full_yml = ".kitchen.yml"
end

puts "Using #{ k_full_yml }"
puts "Using #{ kitchen_cmd }"
puts "Executing the following: KITCHEN_YAML=\"#{ k_full_yml }\" kitchen #{ kitchen_cmd }"
exec "KITCHEN_YAML=\"#{ k_full_yml }\" kitchen #{ kitchen_cmd }"