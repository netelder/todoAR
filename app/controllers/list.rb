require_relative '../view/display'
require_relative '../models/task'

class Todo

  include Display
 
  @command = ARGV.shift
  @user_input = ARGV.join(" ")

  def self.make_display

    final_array = []

    Task.all.each_with_index do |task_obj, index|
      final_array << [ task_obj.id , task_obj.complete, task_obj.description ]
    end

    Display.show_list(final_array)
  end

  case @command
  when "add"
    Task.add(@user_input)
  when "delete"
    Task.delete(@user_input)
    # show_user
  when "list"
    self.make_display
  when "complete"
    Task.complete(@user_input)
  end
end

Todo.new
