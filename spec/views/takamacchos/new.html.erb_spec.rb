require 'spec_helper'

describe "takamacchos/new" do
  before(:each) do
    assign(:takamaccho, stub_model(Takamaccho).as_new_record)
  end

  it "renders new takamaccho form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", takamacchos_path, "post" do
    end
  end
end
