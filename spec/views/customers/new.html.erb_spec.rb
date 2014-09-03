require 'rails_helper'

RSpec.describe "customers/new", :type => :view do
  before(:each) do
    assign(:customer, Customer.new(
      :name => "MyString",
      :kana => "MyString",
      :email => "MyString",
      :sex => 1,
      :age => 1,
      :marriage => 1,
      :pref => "MyString",
      :carrier => "MyString",
      :curry => "MyString"
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input#customer_name[name=?]", "customer[name]"

      assert_select "input#customer_kana[name=?]", "customer[kana]"

      assert_select "input#customer_email[name=?]", "customer[email]"

      assert_select "input#customer_sex[name=?]", "customer[sex]"

      assert_select "input#customer_age[name=?]", "customer[age]"

      assert_select "input#customer_marriage[name=?]", "customer[marriage]"

      assert_select "input#customer_pref[name=?]", "customer[pref]"

      assert_select "input#customer_carrier[name=?]", "customer[carrier]"

      assert_select "input#customer_curry[name=?]", "customer[curry]"
    end
  end
end
