class Post < ActiveRecord::Base
	has_many :user 
	has_many :comments, dependent: :destroy, :through => :user

	validates :title, presence: true, length: {minimum: 5}
	validates :body, presence: true
end
