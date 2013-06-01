module Display

  def get_user_input
    @command = ARGV.shift
    @user_input = ARGV.join(" ")
    
  end

  def show_list(formatted_list)
    puts "task_id  complete  description"
    puts "-------  --------  -----------"
    formatted_list.each do | line |
      puts "#{line[0]}: #{line[1]} #{line[2]}"
    end

  end
end

 command = ARGV.shift
argument = ARGV.join(" ")


