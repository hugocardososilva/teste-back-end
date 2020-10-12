require 'rails_helper'

RSpec.describe "contact_forms/show", type: :view do
  before(:each) do
    @contact_form = assign(:contact_form, ContactForm.create!(
      name: "Name",
      email: "Email",
      message: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/MyText/)
  end
end
