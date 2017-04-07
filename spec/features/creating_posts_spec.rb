require 'rails_helper.rb'

feature 'Creating Posts' do
  scenario 'can creat a post' do
    visit '/'
    click_link 'New Post'
    fill_in 'Title', with: "First Post"
    fill_in 'Body', with: "This is the body i need 20 chars"
    click_button 'Create Post'
    expect(page).to have_content('First Post')
    expect(page).to have_content('This is the body')
  end

  scenario 'post should have title' do
    visit '/'
    click_link 'New Post'
    fill_in 'Title', with: ""
    fill_in 'Body', with: 'No Title here'
    click_button 'Create Post'
    expect(page).to have_content('Error creating post')
  end

  scenario 'post body should have greater than 20 chars' do
    visit '/'
    click_link 'New Post'
    fill_in 'Title', with: 'This post should have a body'
    fill_in 'Body', with: '123456789'
    click_button 'Create Post'
    expect(page).to have_content('Error creating post')
  end
end
