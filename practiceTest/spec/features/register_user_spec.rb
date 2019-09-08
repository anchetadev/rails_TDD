require 'rails_helper'
feature "guest user registers an account" do
  scenario "successfully registers a new user account" do
    visit "/"
    fill_in "name", with: "MyString"
    click_button "Create User"
    expect(page).to have_content "Welcome, MyString"    
    expect(page).to have_current_path(messages_path)    
  end
  scenario "unsuccessfully creates a new user account" do 
    click_button "Create User"
    expect(current_path).to eq("/")
  end
end
feature "user posts a message" do
    scenario "successfully creates a post" do
    visit messages_path
    fill_in 'message', with: "MyStringgggggggggggggggggg"
    click_button "Create Post"
    expect(page).to have_content "MyStringgggggggggggggggggg"
    expect(page).to have_current_path(messages_path) 
    end
    scenario 'unsuccessfully creates a post' do
        visit messages_path
        fill_in 'message', with: ""
        click_button "Create Post"
        expect(current_path).to eq(messages_path)
    end

end