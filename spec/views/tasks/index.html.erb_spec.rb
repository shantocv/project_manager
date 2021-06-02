require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        title: "Title",
        description: "MyText",
        status: "Status"
      ),
      Task.create!(
        title: "Title",
        description: "MyText",
        status: "Status"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
  end
end
