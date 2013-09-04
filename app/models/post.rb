class Post < ActiveRecord::Base
	belongs_to :user
	has_many :votes

	def upvotes
		self.votes.where(value: +1).count
	end

	def downvotes
		self.votes.where(value: -1).count
	end

	def value
		self.votes.inject(0) { |sum, vote|
			sum + vote.value
		}
	end
end
