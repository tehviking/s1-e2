require 'user'

class Action
  attr_accessor :type
  attr_accessor :count
  attr_accessor :user
  
  def initialize(type, count, user)
    @type = type
    @count = count
    @user = user
    self.add_achievement(@user) if self.triggers_achievement?
  end
  
  def triggers_achievement?
    self.type == 'commit' && self.count == 10
  end    
  
  def add_achievement(user)
    user.achievements << '10 commits'
  end
end