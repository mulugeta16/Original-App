require 'rails_helper'
RSpec.describe Comment, type: :model do
  it "Validation does not pass if the name is empty" do
    comment = Comment.new(suggest: '', blog_id:'1', user_id:'1')
    expect( comment).not_to be_valid
  end
  it "Validation does not pass if description is empty" do
    comment = Comment.new(suggest: 'Failure test')
    expect( comment).not_to be_valid
  end
  it "validation passes If description is described in name and description" do
    comment=Comment.new(suggest:'True')
  end
end
