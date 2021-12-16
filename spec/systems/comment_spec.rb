require 'rails_helper'
RSpec.feature "Comment management function", type: :feature do
  scenario "Test description list" do
    visit blogs_path
  end
  scenario "Test Comment creation" do
    Comment.create(suggest:"hello world" )
  end
  scenario 'Test Comment Deletion' do
    blog2=Comment.create(suggest:"hello world" )
    blog2.delete
    visit blogs_path
  end
  scenario 'Test Comment validation' do
    Comment.create(suggest:"hello world" )
    visit blogs_path
  end
end
