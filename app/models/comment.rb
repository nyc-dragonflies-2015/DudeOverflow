class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, polymorphic: true

  validates :body, presence: true

  def vote_count
    self.upvotes - self.downvotes
  end

  def upvotes
    self.votes.where(upvote: true).count
  end

  def downvotes
    self.votes.where(upvote: false).count
  end
end
