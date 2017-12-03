require 'rails_helper'

describe 'test for admin proccesses' do
  it 'will test admin editing a new project' do
    FactoryBot.create(:project_edit)
    visit signin_path
    fill_in 'Email', :with => 'c@d.com'
    fill_in 'Password', :with => 'password4'
    click_on 'sign_in_button'
    click_link 'Edit'
    fill_in 'Title', :with => 'Title Test'
    fill_in 'project_link', :with => 'https://reddit.com'
    click_on 'Update Project'
    expect(page).to have_content "Project Updated"
  end

  it 'will test admin editing a question and failing' do
    FactoryBot.create(:project_edit)
    visit signin_path
    click_link 'Sign in'
    fill_in 'Email', :with => 'c@d.com'
    fill_in 'Password', :with => 'password4'
    click_on 'sign_in_button'
    click_link 'Edit'
    fill_in 'Title', :with => ''
    fill_in 'project_link', :with => ''
    click_on 'Update Project'
    save_and_open_page
    expect(page).to have_content "Edit Project"
  end
end
