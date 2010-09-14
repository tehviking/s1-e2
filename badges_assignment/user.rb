require 'badges_assignment'

class User
  attr_accessor :achievements, :actions
  
  def initialize(achievements=[], actions=[])
    @achievements = achievements
    @actions = actions
  end
end