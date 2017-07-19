class Item < ApplicationRecord
	belong_to :category
	belong_to :user, optional: true

	scope :return_size, -> (size) { where("size=?", size)}
	scope :user_unassigned, -> { where(user_id: nil) }
end
