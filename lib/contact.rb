class Contact
  @@contacts = []

  attr_reader(:first_name, :last_name, :birth_month, :phones, :id)

  define_method(:initialize) do |attributes|
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @birth_month = attributes[:birth_month]
    @phones = []
    @id = @@contacts.length + 1
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

  def self.find identification
    @@contacts.each do |contact|
      if contact.id == identification
        return contact
      end
    end
  end

end
