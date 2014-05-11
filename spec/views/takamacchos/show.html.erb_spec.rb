require 'spec_helper'

describe "takamacchos/show" do
  before(:each) do
    @takamaccho = assign(:takamaccho, stub_model(Takamaccho))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
