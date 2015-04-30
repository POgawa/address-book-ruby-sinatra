require('rspec')
require('contact')

describe(Contact) do
  describe('#first_name') do
    it('returns the first name of the contact') do
      test_contact = Contact.new({:first_name => 'Ben'})
      expect(test_contact.first_name()).to(eq('Ben'))
    end
  end
end
