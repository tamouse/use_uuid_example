When(/^I visit the home page$/) do
  get '/'
end

Then(/^I recieve an ok status$/) do
  expect(last_response.status).to eq(200)
end

Then(/^the page contains "(.*?)"$/) do |arg1|
  expect(last_response.body).to have_content(arg1)
end
