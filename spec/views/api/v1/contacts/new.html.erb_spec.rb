require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      name: "MyString",
      email: "MyString"
    ))
  end

  xit "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", _api_v1_api_v1_contact_path, "post" do

      assert_select "input[name=?]", "contact[name]"

      assert_select "input[name=?]", "contact[email]"
    end
  end
end
