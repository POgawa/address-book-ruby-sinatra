class Contact
  @@contacts = []

  attr_reader(:first_name, :last_name, :birth_month, :phones )

  define_method(:initialize) do |attributes|
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @birth_month = attributes[:birth_month]
    @phones = []
  end



  def add_phone(phone)
    @phones<<phone
  end

  def save
    @@contacts.push(self)
  end

  def self.all
    @@contacts
  end

end
