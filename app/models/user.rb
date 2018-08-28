class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
         
  has_many :comments, dependent: :delete_all
  has_many :messages, dependent: :delete_all
  has_many :articles, dependent: :delete_all
  has_one :interest
  
  belongs_to :club
  
  validate :password_complexity
  def password_complexity
    return if password.blank? || password =~ /^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,70}$/

    errors.add :password, '특수문자와 숫자를 잊지 않으셨죠?!'
  end
end

#:confirmable
