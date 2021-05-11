class Suggestion < ApplicationRecord
  validates :user, :body, presence: true
  validates :user, length: {minimum: 2, maximum: 12}
  validates :user, length: {minimum: 2, maximum: 20}
  # validates :body, format: { with: /\A[a-zA-Z]+\z/,
  #   message: "Only Letters Please" }
  validates :upvotes, numericality: { less_than: 50}
  validates :downvotes, numericality: { less_than: 50}

  #
end
