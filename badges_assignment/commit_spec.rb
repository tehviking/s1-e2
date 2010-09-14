require 'commit'
require 'user'

describe Commit do
  describe "When a user commits" do
    before(:each) do
      @user = User.new
      @commit = Commit.new('s1-e2', @user, 10)
    end
    
    it "should fire an appropriate action" do
      @user.actions.should_not be_empty
      @user.actions[0].type.should == 'commit'
    end
  end
  
end