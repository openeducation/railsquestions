require 'spec_helper'

describe FlagReason do
  before { @flag_reason = FlagReason.new(title: "Spam", description: 'a' * 20) }

  subject { @flag_reason }

  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:flag_count) }
  it { should respond_to(:published) }
  it { should respond_to(:published?) }

  describe "vaildations" do
    describe "title should required" do
    	before { @flag_reason.title = " " }
      it { should_not be_valid }
    end

    describe "description should be reuqired" do
      before { @flag_reason.description = " " }
      it { should_not be_valid }
    end
  end
end
