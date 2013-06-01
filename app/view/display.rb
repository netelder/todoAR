module Display

  def self.show_list(formatted_list)
    puts "task_id  complete  description"
    puts "-------  --------  -----------"
    formatted_list.each do | line |
      puts "#{line[0]}:".ljust(10) + "#{line[1]}".ljust(9)+"#{line[2]}"
    end
  end

  # p ARGV


  def get_user_input
    gets.chomp
  end
end



