class User < ApplicationRecord
	has_many :items, dependent: :destroy
	validates :name, presence: :true
	validates :email, uniqueness: true

end
