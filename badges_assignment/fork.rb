class Fork
  attr_reader :project
  attr_accessor :count, :user
  
  def initialize(project, user, count = 0)
    @project = project
    @count = count
    @user = user
    action = Action.new('fork', @count, @user)
  end
end