require 'rails_helper'
RSpec.feature "Blog management function", type: :feature do
  scenario "Test description list" do
    visit blogs_path
  end
  scenario "Test blog creation" do
  Blog.create(title:"title", content: "content1", image:'foot1.jpg')
  end
  scenario "Test blog details" do
    Blog.first
  end
  scenario "Test blog updating" do
      blog=Blog.create(title:"title", content: "content1", image:'foot1.jpg')
    blog.title='title2'
    blog.save
   # save_and_open_page
  end
  scenario 'Test blog Deletion' do
    blog1=Blog.create(title:"title", content: "content1", image:'foot1.jpg')
    blog1.delete
    visit blogs_path
  end
  scenario 'Test blog validation' do
    Blog.create(title:"title", content: "content1", image:'foot1.jpg')
    visit blogs_path
  end
end
