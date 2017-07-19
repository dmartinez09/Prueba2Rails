class User < ApplicationRecord
	has_many :items, dependent: :destroy
	validates :name, presence: :true
	validates :email, uniqueness: true
	before_save :inicial_mayuscula

	def inicial_mayuscula
		self.name.capitalize!
		
	end

end
