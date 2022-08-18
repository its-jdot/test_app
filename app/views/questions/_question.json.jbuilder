json.extract! question, :id, :test_id, :body, :question_score, :created_at, :updated_at
json.url question_url(question, format: :json)
