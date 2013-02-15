When "I create a new contact" do
  fill_in "Full Name", with: "John McClane"
  fill_in "Phone Number", with: "9041234567"
  fill_in "Zip Code", with: "32250"
  select "Other", from:"Gender"
  select "1980", from: "contact_birthdate_1i"
  select "July", from: "contact_birthdate_2i"
  select "1", from: "contact_birthdate_3i"
  click_button "Save"
end

And "I should see the new contact in the list" do
  @contact = Contact.last
  page.should have_xpath("//table//tr//td/a[contains(.,'#{@contact.full_name}')]")
end


