json.extract! item, :id, :name, :complete, :checklist_id, :created_at, :updated_at
json.url item_url(item, format: :json)