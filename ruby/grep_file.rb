if ARGV.length != 2
    puts "Requires two parameters, a file name and a regex to grep for."
    exit;
end

filename = ARGV[0]
regex = Regexp.new(ARGV[1])
puts "Going to open '#{filename}'"

fh = open filename
content = fh.read
fh.close

p content.split("\n").select {|line| regex.match(line) }

# ruby grep_file.rb sample.txt NOT
