class Suggestion < ApplicationRecord
  validates :user, :body, presence: true
  validates :user, length: {minimum: 2, maximum: 12}
  validates :user, length: {minimum: 2, maximum: 20}
  # validates :body, format: { with: /\A[a-zA-Z]+\z/,
  #   message: "Only Letters Please" }

  # after_initialize :set_defaults

  # def set_defaults
  #   self.upvotes = 0
  #   self.downvotes = 0
  # end
end
