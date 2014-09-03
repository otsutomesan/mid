class User
  include Mongoid::Document
  field :name, type: String
  field :age, type: Integer
  field :email, type: String

  def hello
    self.name += "でござる"
  end 

  def age_up
     self.age += 1
  end

end
