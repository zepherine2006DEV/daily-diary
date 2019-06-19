# As a developer
# So that I know my web app environment is working
# I want to see "Hello World" displayed

feature 'Hello World' do
  scenario 'user sees hello world message when visiting default page' do
    visit '/'
    expect(page).to have_content('Hello World')
  end
end
