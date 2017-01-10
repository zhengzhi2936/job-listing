class User < ApplicationRecord
  has_many :resumes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :jobs
         def admin?
           is_admin
         end
end
