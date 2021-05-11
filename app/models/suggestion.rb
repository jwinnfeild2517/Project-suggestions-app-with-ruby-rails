class Suggestion < ApplicationRecord
  validates :user, :body, presence: true
  validates :user, length: {minimum: 2, maximum: 12}
  # validates :body, format: { with: /\A[a-zA-Z]+\z/,
  #   message: "Only Letters Please" }

  # before_save :default_values
  # def default_values
  #   self.upvotes = 0
  #   self.downvotes = 0
  # end
end
