require 'spec_helper'

describe Question do
  before { @question = Question.new }

  subject { @question }

  it { should respond_to(:title) }
  it { should respond_to(:user) }
  it { should respond_to(:slug) }
  it { should respond_to(:body) }
  it { should respond_to(:closed) }
  it { should respond_to(:closed?) }
  it { should respond_to(:close) }

  describe "close" do
    before { @question.close }
    its(:closed) { should eql true}
    its(:closed_at.to_s) { should = "#{Time.now.utc.stamp('2013-07-30 00:57:40 UTC') }"}
  end
end
