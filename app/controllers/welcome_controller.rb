class WelcomeController < ApplicationController
  def index
    @posts = Post.order('created_at desc').limit(6)
  end
end
