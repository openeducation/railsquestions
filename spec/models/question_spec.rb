require 'spec_helper'

describe Question do
  before do
    @question = Question.new
    @close_reason = create(:close_reason)
  end

  subject { @question }

  it { should respond_to(:title) }
  it { should respond_to(:user) }
  it { should respond_to(:slug) }
  it { should respond_to(:body) }
  it { should respond_to(:closed) }
  it { should respond_to(:closed?) }
  it { should respond_to(:close) }
  it { should respond_to(:answers) } 

  describe "close" do
    before { @question.close(@close_reason) }
    its(:closed) { should eql true}
    its(:closed_at.to_s) { should = "#{Time.now.utc.stamp('2013-07-30 00:57:40 UTC') }"}
    its(:close_reason) { should eql @close_reason }
  end
end
