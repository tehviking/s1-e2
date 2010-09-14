require 'fork'
require 'user'

describe Commit do
  describe "When a user commits" do
    before(:each) do
      @user = User.new
      @commit = Fork.new('s1-e2', @user, 5)
    end
    
    it "should fire an appropriate action" do
      @user.actions.should_not be_empty
      @user.actions[0].type.should == 'fork'
    end
    
    it "triggers a 5th fork achievement" do
      @user.achievements.should include '5th fork'
    end
  end
end