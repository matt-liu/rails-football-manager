json.array!(@coaches) do |coach|
  json.extract! coach, :id, :name, :team, :title
  json.url coach_url(coach, format: :json)
end
