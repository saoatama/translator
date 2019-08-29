json.extract! private_article, :id, :user_id, :name, :path, :created_at, :updated_at
json.url private_article_url(private_article, format: :json)
