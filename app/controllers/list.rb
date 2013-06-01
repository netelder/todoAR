#require_relative '../view/display'

require_relative '../models/task'

class Todo

    # include Display
  # command = ARGV.shift
  # argument = ARGV.join(" ")
  # def get_user_input
    @command = ARGV.shift
    @user_input = ARGV.join(" ")
  # end

  # p @command
  # p @user_input

  # p 'def show list'

  def self.show_list(formatted_list)
    puts "task_id  complete  description"
    puts "-------  --------  -----------"
    formatted_list.each do | line |
      puts "#{line[0]}:".ljust(10) + "#{line[1]}".ljust(9)+"#{line[2]}"
    end
    puts
  end

  def self.make_display
    final_array = []
    Task.all.each_with_index do |task_obj, index|
     final_array << [ task_obj.id , task_obj.complete, task_obj.description ]
   end
   show_list(final_array)
  end


    # get_user_input
    case @command
    when "add"
      Task.add(@user_input)
    when "delete"
      Task.delete(@user_input)
      # show_user
    when "list"
      make_display
    when "complete"
      Task.complete(@user_input)
    end


  #   if ARGV[0] == "list"
  #   list.show_tasks
  # elsif ARGV[0] == "add"
  #   list.add_task(ARGV[1..-1].join)
  # elsif ARGV[0] == "delete"
  #   list.delete(ARGV[1].to_i)
  # elsif ARGV[0] == "complete"
  #   list.complete(ARGV[1].to_i)
  # end
end

Todo.new
