require 'pry'
require 'mysql2'


begin
  client = Mysql2::Client.new(:host => 'localhost', :database => 'football', :username => "root", :password => "1")

#for
  puts "Input team name"
  team_name= gets.chomp
  for number in 0..5
    client.query("insert into football_name(name) values ('team_name')")
    puts "Name of team is #{team_name} #{number}"
  end

  rs = client.query("SELECT * FROM football_name")
  client.close if client
end
# while
  number=6
  puts "Input team name"
  team_name= gets.chomp
  while number <10 do
  	binding.pry
    client.query("insert into football_name(name) values ('team_name')")
    number +=1
    puts "Name of team is #{team_name} #{number}"
  end
# until
  number=11
  puts "Input team name"
  team_name= gets.chomp
  until number >18
    client.query("insert into football_name(name) values ('team_name')")
    puts "Name of team is #{team_name} #{number}"
  end
  
  rs = client.query("SELECT * FROM football_name")
  client.close if client
end