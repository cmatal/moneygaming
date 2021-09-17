Given(/^a user navigates to the SignUp page$/) do
  @browser.goto('https://moneygaming.qa.gameaccount.com/main.do')
  @browser.link(class: 'newUser green').click

end

When(/^only title, first and surname are entered$/) do
  @browser.select_list(id: 'title').select 'Ms'
  @browser.input(id: 'forename').send_keys 'firstname'
  @browser.input(name: 'map(lastName)').send_keys 'lastname'
end

And(/^even if t&c are accepted$/) do
  @browser.input(name: 'map(terms)').click
end

And(/^Join Now! is clicked$/) do
  @browser.input(value: 'Join Now!').click
end

Then(/^The following error is shown at least once: This field is required$/) do
  @browser.wait_until {|browser| browser.element(text: 'This field is required')}
end
