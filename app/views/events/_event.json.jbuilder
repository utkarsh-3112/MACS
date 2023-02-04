json.extract! event, :id, :date, :status, :name, :organizer, :coordinator, :sponsor, :event_type, :created_at, :updated_at
json.url event_url(event, format: :json)
