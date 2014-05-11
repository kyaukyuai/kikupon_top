require 'spec_helper'

describe "takamacchos/edit" do
  before(:each) do
    @takamaccho = assign(:takamaccho, stub_model(Takamaccho))
  end

  it "renders the edit takamaccho form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", takamaccho_path(@takamaccho), "post" do
    end
  end
end
