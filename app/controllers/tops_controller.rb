class TopsController < ApplicationController
  def index
    @blogs = Blog.all.last(6)
  end
end
