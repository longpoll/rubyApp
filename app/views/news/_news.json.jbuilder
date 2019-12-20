json.extract! news, :id, :title, :content, :user_id, :editCount, :created_at, :updated_at
json.url news_url(news, format: :json)
