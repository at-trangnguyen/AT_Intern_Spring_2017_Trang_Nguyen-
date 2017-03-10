require 'pry'
require 'active_support/all'
class Report
  def initialize(path)
    @path = path
  end

  def read_file
		f = File.open(@path)
    @report_file = File.new("#{Time.now.to_i}.txt", "w+") 
    f.each do |line|
      @report_file.write(line + "\n")
    end
  end

  def input_report
    read_file
    line = 1
    while true do
      write_report_to_file(line)
      line += 1
      select = gets.chomp
      case select
      when 'n'
        puts "Please check your input file in this path: #{@path}"
				break 
      else
      end
    end
  end

  def write_report_to_file(line) 
    title = "Please input your line #{line.ordinalize}: "
    puts title
    report_string = gets.chomp
    @report_file.write(title + "\n")
    @report_file.write(report_string + "\n")
    puts "Do you want to input #{(line+1).ordinalize}?"
  end
end
puts "Input your info file path: "
path = gets.chomp
Report.new(path).input_report
