class User
  attr_accessor :name, :email

  def initialize(attributes={})
    @name = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end

u = User.new({name: "Brantley", email: "bbeaird@gmail.com"})
p u
p u.formatted_email
p u.name