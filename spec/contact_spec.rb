require('rspec')
require('contact')

describe(Contact) do
  describe('#first_name') do
    it('returns the first name of the contact') do
      test_contact = Contact.new({:first_name => 'Ben'})
      expect(test_contact.first_name()).to(eq('Ben'))
    end
  end

  describe('#last_name') do
    it('returns the last name of the contact') do
      test_contact = Contact.new({:last_name => 'Cornelis'})
      expect(test_contact.last_name()).to(eq('Cornelis'))
    end
  end
end
