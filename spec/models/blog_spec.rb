require 'rails_helper'
describe 'Blog model function', type: :model do
  context 'Validation test' do
    it 'It ensures title is present' do
      blog = Blog.new(title: '', content: 'fail test', image:'foot1.jpg'  ).save
      expect(blog).to eq(false)
    end
    it 'It ensures content is present' do
      blog = Blog.new(title: 'title', content: "", image:'foot1.jpg' ).save
      expect(blog).to eq(false)
    end
    it 'Validation fail' do
      blog = Blog.new(title: 'title', content: "content1", image:''  ).save
      expect(blog).to eq(false)
    end
    it 'Validation passes' do
      blog = Blog.new(title: 'title', content: "content1",  image:'foot1.jpg' ).save
      expect(blog).to eq(false)
    end
  end
  end
