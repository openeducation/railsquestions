require 'spec_helper'

describe CloseReason do
  before do
  	@close_reason = CloseReason.new(title: 'Off Topic', published: true, description: 'This question is off topic. What is off topic can sometimes be hard to understand. Please check the about the page.')
  end

  subject { @close_reason }

  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:published) }
  it { should respond_to(:published?) }

   describe "vaildtions" do
  	describe "title" do
  		before { @close_reason.title = " " }
  		it { should_not be_valid }
  	end

  	describe "description" do
  		before { @close_reason.description = " " }
  		it { should_not be_valid }
  	end

  	 describe "description" do
  		before { @close_reason.published = nil }
  		it { should_not be_valid }
  	end
   end
end
