class Customer
  include Mongoid::Document
  #include Mongoid::Attributes::Dynamic
  #include Mongoid::MultiParameterAttributes
  #include Mongoid::Timestamps

  field :name, type: String
  field :kana, type: String
  field :email, type: String
  field :tel, type: String
  field :sex, type: Integer
  field :age, type: Integer
  field :birth, type: Time
  field :marriage, type: Integer
  field :pref, type: String
  field :carrier, type: String
  field :level, type: Integer
  field :curry, type: String
end
