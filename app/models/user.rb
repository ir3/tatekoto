class User < ActiveRecord::Base
  acts_as_paranoid
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :status, :deleted_at, :email, :password, :password_confirmation, :remember_me

  # attr_accessible :title, :body
  before_create :reset_param
  def reset_param
    self.status = "active"
  end
end
