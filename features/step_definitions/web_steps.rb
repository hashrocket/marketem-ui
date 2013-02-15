And "show" do
  save_and_open_page
end

Given "I am on the home page" do
  visit root_path
end

When /^I follow "(.*?)"$/ do |link_name|
  click_link(link_name)
end

Then /^I should see "(.*?)"$/ do |content|
  page.should have_content(content)
end

And /^the "(.*?)" link should be active$/ do |link_name|
  page.should have_xpath("//a[@class='active'][contains(.,'#{link_name}')]")
end

