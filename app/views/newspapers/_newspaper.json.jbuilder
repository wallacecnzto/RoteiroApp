json.extract! newspaper, :id, :name, :address, :amount, :description, :created_at, :updated_at
json.url newspaper_url(newspaper, format: :json)