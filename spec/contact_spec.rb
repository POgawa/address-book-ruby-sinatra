require('rspec')
require('contact')
require "phone"

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

  describe('#birth_month') do
    it('returns the month that the contact was born') do
      test_contact = Contact.new({:birth_month => 'April'})
      expect(test_contact.birth_month()).to(eq('April'))
    end
  end

  describe('#phones') do
    it('returns the list of phones') do
      test_contact = Contact.new({:birth_month => 'April'})
      expect(test_contact.phones()).to(eq([]))
    end
  end

  describe("#add_phone") do
    it("adds a phone object to the contact's number array") do
      test_contact = Contact.new({:first_name => 'Ben'})
      test_phone = Phone.new({:area_code => 503, :number => 3341234})
      test_contact.add_phone(test_phone)
      expect(test_contact.phones()).to(eq([test_phone]))
    end
  end
end
