require 'action'
require 'user'

describe Action do
  describe "when an action is created" do
    before(:each) do
      @user = User.new
      @action = Action.new('commit', 10, @user)
    end
    
    it "assigns a type" do
      @action.type.should == 'commit'
    end
    
    it "assigns a count" do
      @action.count.should == 10
    end
  end
  
  describe "when an achievement is reached" do
    before(:each) do
      @user = User.new
      @action = Action.new('commit', 10, @user)
    end
    
    it "triggers an achievement" do
      @user.achievements.should include '10 commits'
    end
  end
end
