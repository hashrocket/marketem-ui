require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

And "show" do
  save_and_open_page
end

Given /^I am on (.+)$/ do |page_name|
  visit(path_to(page_name))
end

Then /^I should be on (.+)$/ do |page_name|
  current_path.should == path_to(page_name)
end

When /^I follow "(.*?)"$/ do |link_name|
  click_link(link_name)
end

Then /^I should see "(.*?)"$/ do |content|
  page.should have_content(content)

end
Then /^I should not see "(.*?)"$/ do |content|
  page.should_not have_content(content)
end

And /^the "(.*?)" link should be active$/ do |link_name|
  page.should have_xpath("//a[@class='active'][contains(.,'#{link_name}')]")
end

