class User < ActiveRecord::Base
  has_many :jobs
  has_many :applicants, through: :jobs

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
end
