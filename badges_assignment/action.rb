require 'badges_assignment'

class Action
  attr_accessor :type
  attr_accessor :count
  attr_accessor :user
  
  ACHIEVEMENTS = {['commit', 10] => '10th commit', ['fork', 5] => '5th fork', ['issue', 15] => 'problem solver'}
  
  def initialize(type, count, user)
    @type = type
    @count = count
    @user = user
    @user.actions << self
    self.add_achievement(@type, @count, @user) if self.triggers_achievement?
  end
  
  def triggers_achievement?
    self.look_up_achievement(self.type, self.count)
    return true if @achievement_name
  end    
  
  def add_achievement(type, count, user)
    achievement = look_up_achievement(type, count)
    user.achievements << achievement
  end
  
  def look_up_achievement(type, count)
    @achievement_name = ACHIEVEMENTS[[self.type, self.count]] 
  end
end