require 'spec_helper'

describe Answer do
  before { @answer = Answer.new(body: "a" * 250) }
  
  subject { @answer }
  
  it { should respond(:body) }
  it { should respond(:user) }
  it { should respond(:question) }
  
  describe "vaildation" do
    describe "body" do
      before { @answer.body = " " }
      it { should be_valid }
    end
    
    describe "user" do
      before { @answer.user = " " }
      it { should be_valid}
    end
    
    describe "question" do
      before { @answer.question }
      it { should be_valid}
    end
  end
end
