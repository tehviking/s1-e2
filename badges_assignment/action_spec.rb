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
  
  describe "when a 10 commit achievement is reached" do
    before(:each) do
      @user = User.new
      @action = Action.new('commit', 10, @user)
    end
    
    it "triggers a 10 count achievement" do
      @user.achievements.should include '10th commit'
    end
  end
  
  describe "when a 5th fork achievement is reached" do
    before(:each) do
      @user = User.new
      @action = Action.new('fork', 5, @user)
    end
    
    it "triggers a 5th fork achievement" do
      @user.achievements.should include '5th fork'
    end
  end
  
  describe "when you've resolved your 15th issue" do
    before(:each) do
      @user = User.new
      @action = Action.new('issue', 15, @user)
    end
    
    it "triggers a 15 issue achievement" do
      @user.achievements.should include 'problem solver'
    end
  end
end
