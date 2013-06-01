require_relative '../../db/config'


class Task < ActiveRecord::Base

  def self.add(description)
    self.create({description: description})
  end

  def self.complete(primary_key)
    self.update(primary_key, :complete => 1)
  end

end
