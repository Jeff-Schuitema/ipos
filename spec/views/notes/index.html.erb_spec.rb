require 'rails_helper'

RSpec.describe "notes/index", type: :view do
  before(:each) do
    assign(:notes, [
      Note.create!(
        title: "Title"
      ),
      Note.create!(
        title: "Title"
      )
    ])
  end

  it "renders a list of notes" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
  end
end
