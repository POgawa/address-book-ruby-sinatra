class Contact
  attr_reader(:first_name, :last_name, :birth_month)

  define_method(:initialize) do |attributes|
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @birth_month = attributes[:birth_month]
  end
end
