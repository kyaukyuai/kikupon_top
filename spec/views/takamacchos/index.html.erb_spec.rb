require 'spec_helper'

describe "takamacchos/index" do
  before(:each) do
    assign(:takamacchos, [
      stub_model(Takamaccho),
      stub_model(Takamaccho)
    ])
  end

  it "renders a list of takamacchos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
