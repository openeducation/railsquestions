require 'spec_helper'

describe Answer do
  before do 
    
    @answer = Answer.new(body: "a" * 250, user: create(:user), question: create(:question)) 
  end
  
  subject { @answer }
  
  it { should respond_to(:body) }
  it { should respond_to(:user) }
  it { should respond_to(:question) }
  
  describe "vaildation" do
    describe "body" do
      before { @answer.body = " " }
      it { should_not be_valid }
    end
    
    describe "user" do
      before { @answer.user = nil }
      it { should_not be_valid}
    end
    
    describe "question" do
      before { @answer.question = nil }
      it { should_not be_valid}
    end
  end
end
