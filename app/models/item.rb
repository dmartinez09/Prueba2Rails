class Item < ApplicationRecord
	belongs_to :category
	belongs_to :user, optional: true

	scope :return_size, -> (size) { where("size=?", size)}
	scope :user_unassigned, -> { where(user_id: nil) }

	after_destroy :delete_category

	def delete_category
		Category.all.each do |x|
			unless category.items.any?
				category.destroy

			end
		end
	end
end