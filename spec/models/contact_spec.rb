require 'active_record_spec_helper'
require 'contact'

describe Contact do
  context "#age" do
    it "returns the contact's age" do
      contact = Contact.new(birthdate: 2.years.ago)
      contact.age.should == 2
    end
  end
end
