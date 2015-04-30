require "rspec"
require "phone"

describe(Phone) do
  describe("#area_code") do
    it("returns the area_code for a phone number") do
      test_phone = Phone.new({area_code: 503})
      expect(test_phone.area_code()).to(eq(503))
    end
  end

  describe("number") do
    it("returns the number of the contact") do
      test_phone = Phone.new({number: 5551212})
      expect(test_phone.number()).to(eq(5551212))
    end
  end

  describe("#type") do
    it("returns the type of number") do
      test_phone = Phone.new({type: "work"})
      expect(test_phone.type()).to(eq("work"))
    end
  end
end
