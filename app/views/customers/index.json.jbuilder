json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :kana, :email, :sex, :age, :birth, :marriage, :pref, :carrier, :curry
  json.url customer_url(customer, format: :json)
end
