require 'spec_helper'

describe Flagging do
  before do
    @user = create(:user)
    @question = create(:question)
    @flagging =  Flagging.new(flaggable: @question)
  end

  subject { @flagging }

  it { should respond_to(:flaggable) }
  it { should respond_to(:flag_reason) }
  it { should respond_to(:user) }
  it { should respond_to(:state) }
  it { should respond_to(:helpful?) }
  it { should respond_to(:helpful) }
  it { should respond_to(:not_helpful?) }
  it { should respond_to(:not_helpful) }
  
  describe "state machine" do
  	describe "initial value" do
  		its(:state) { should eql "open" }
  	end

    describe "helpful" do
      before(:each) { @flagging.helpful }
      its(:state) { should eql "helpful" }
      its(:helpful?) { should eql true }
    end
  end
end
