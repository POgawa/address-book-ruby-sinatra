class Contact
  attr_reader(:first_name, :last_name)

  define_method(:initialize) do |attributes|
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
  end
end
