json.array!(@emails) do |email|
  json.extract! email, :id, :to, :subject, :body, :send_date_time
  json.url email_url(email, format: :json)
end
