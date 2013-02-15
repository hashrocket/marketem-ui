When /^I sign in with the correct username and password$/ do
  page.driver.browser.basic_authorize('marketem', 'marketem')
end

When /^I sign in with the incorrect username and password$/ do end
