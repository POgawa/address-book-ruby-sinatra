class Contact
  attr_reader(:first_name)
  
  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
  end
end
