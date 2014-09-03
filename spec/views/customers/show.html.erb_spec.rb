require 'rails_helper'

RSpec.describe "customers/show", :type => :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :name => "Name",
      :kana => "Kana",
      :email => "Email",
      :sex => 1,
      :age => 2,
      :marriage => 3,
      :pref => "Pref",
      :carrier => "Carrier",
      :curry => "Curry"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Kana/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Pref/)
    expect(rendered).to match(/Carrier/)
    expect(rendered).to match(/Curry/)
  end
end
