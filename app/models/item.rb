class Item < ApplicationRecord
	belong_to :category
	belong_to :user, optional: true
end
