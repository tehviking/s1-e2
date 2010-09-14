class Commit
  attr_reader :project
  attr_accessor :count, :user
  
# TODO: replace pretty much all initialize arguments with an options hash  
  def initialize(project, user, count = 0)
    @project = project
    @count = count
    @user = user
    action = Action.new('commit', @count, @user)
  end
end