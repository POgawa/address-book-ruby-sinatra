require "capybara/rspec"
require "./app"
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('the index', {:type => :feature}) do
  it('has the address book') do
    visit('/')
    expect(page).to have_content('Address Book')
  end
end


describe('navigate to add contact page', {:type => :feature}) do
  it('links to the add contact page') do
    visit'/'
    click_link('Add new contact')
    expect(page).to have_content('Please add new contact:')
  end
end

describe('the add contact path', {:type => :feature}) do
  it('processes user input and adds a contact with that info') do
    visit('/newcontact')
    fill_in('first_name', :with => 'Ben')
    fill_in('last_name', :with => 'Cornelis')
    fill_in('birth_month', :with => 'August')
    click_button('Add contact')
    expect(page).to have_content("You've successfully added Ben as a contact!")
  end
end

describe('display contacts on homepage path', {:type => :feature}) do
  it('display contacts on homepage') do
    visit('/newcontact')
    fill_in('first_name', :with => 'Ben')
    fill_in('last_name', :with => 'Cornelis')
    fill_in('birth_month', :with => 'August')
    click_button('Add contact')
    visit'/'
    expect(page).to have_content("Ben Cornelis")
  end
end

describe('contact info path', {:type => :feature}) do
  it('displays contact info for contact in address book') do
    Contact.clear
    visit('/newcontact')
    fill_in('first_name', :with => 'Ben')
    fill_in('last_name', :with => 'Cornelis')
    fill_in('birth_month', :with => 'August')
    click_button('Add contact')
    visit'/'
    click_link('Ben Cornelis')
    expect(page).to have_content("August")
  end
end

describe('add phone path', {:type => :feature}) do
  it("adds a phone number to the contact") do
    visit '/'
    click_link('Ben Cornelis')
    click_link('Add a phone number')
    fill_in('area_code', :with => 503)
    fill_in('number', :with => 5551212)
    fill_in('type', :with => "cell")
    click_button('Submit')
    click_link 'Return to Address Book'
    click_link('Ben Cornelis')
    expect(page).to have_content(5035551212)
  end
end
