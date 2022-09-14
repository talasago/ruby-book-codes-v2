print 'Text?: '
text = gets.chomp

begin
  print 'Pattern?: '
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid pattern: #{e.message}"
  retry
end

matched = text.scan(regexp)
if matched.empty?
  puts 'Nothing matched.'
else
  puts "Matched: #{matched.join(', ')}"
end
