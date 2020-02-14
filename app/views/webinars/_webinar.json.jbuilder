json.extract! webinar, :id, :title, :program, :date_from, :date_to, :category_id, :user_id, :created_at, :updated_at
json.url webinar_url(webinar, format: :json)
