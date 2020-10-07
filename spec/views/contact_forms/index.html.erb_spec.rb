require 'rails_helper'

RSpec.describe "contact_forms/index", type: :view do
  before(:each) do
    assign(:contact_forms, [
      ContactForm.create!(
        name: "Name",
        email: "Email",
        message: "MyText"
      ),
      ContactForm.create!(
        name: "Name",
        email: "Email",
        message: "MyText"
      )
    ])
  end

  it "renders a list of contact_forms" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
