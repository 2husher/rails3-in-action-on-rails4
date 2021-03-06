class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :permissions
  has_many :tickets

  def to_s
    "#{email} (#{admin? ? "Admin" : "User"})"
  end
end
