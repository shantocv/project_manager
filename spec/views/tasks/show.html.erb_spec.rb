require 'rails_helper'

RSpec.describe "tasks/show", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      title: "Title",
      description: "MyText",
      status: "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Status/)
  end
end
