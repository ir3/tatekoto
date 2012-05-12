class Post < ActiveRecord::Base
  attr_accessible :body, :title
  validates :title, :presence => true, :length => {:maximum =>  90}
  validates :body,  :presence => true, :length => {:maximum => 200}
end
