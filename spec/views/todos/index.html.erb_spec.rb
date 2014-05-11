require 'spec_helper'

describe "todos/index" do
  before(:each) do
    assign(:todos, [
      stub_model(Todo,
        :title => "Title",
        :task => "Task"
      ),
      stub_model(Todo,
        :title => "Title",
        :task => "Task"
      )
    ])
  end

  it "renders a list of todos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Task".to_s, :count => 2
  end
end
