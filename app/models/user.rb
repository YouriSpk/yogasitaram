class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :teacher_cvs, dependent: :destroy
  has_many :offered_formats, dependent: :destroy
  has_many :pre_natals, dependent: :destroy
  has_many :corporate_offers, dependent: :destroy
end
