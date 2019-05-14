json.extract! post, :id, :description, :picture, :hit, :created_at, :updated_at
json.url post_url(post, format: :json)
