json.extract! suggestion, :id, :user, :body, :upvotes, :downvotes, :created_at, :updated_at
json.url suggestion_url(suggestion, format: :json)
