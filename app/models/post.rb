class Post < ApplicationRecord
	belongs_to :user, optional: true
	attachment :image
	has_many :comments, dependent: :destroy
end
