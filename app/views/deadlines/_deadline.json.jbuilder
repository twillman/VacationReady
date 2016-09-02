json.extract! deadline, :id, :due_date, :task, :status, :created_at, :updated_at
json.url deadline_url(deadline, format: :json)