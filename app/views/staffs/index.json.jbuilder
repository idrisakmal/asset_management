json.array!(@staffs) do |staff|
  json.extract! staff, :id, :name, :email, :hp
  json.url staff_url(staff, format: :json)
end
