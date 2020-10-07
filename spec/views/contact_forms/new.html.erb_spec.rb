require 'rails_helper'

RSpec.describe "contact_forms/new", type: :view do
  before(:each) do
    assign(:contact_form, ContactForm.new(
      name: "MyString",
      email: "MyString",
      message: "MyText"
    ))
  end

  it "renders new contact_form form" do
    render

    assert_select "form[action=?][method=?]", contact_forms_path, "post" do

      assert_select "input[name=?]", "contact_form[name]"

      assert_select "input[name=?]", "contact_form[email]"

      assert_select "textarea[name=?]", "contact_form[message]"
    end
  end
end
