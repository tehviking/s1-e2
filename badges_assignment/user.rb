class User
  attr_accessor :achievements
  
  def initialize(achievements = [])
    @achievements = achievements
  end
end