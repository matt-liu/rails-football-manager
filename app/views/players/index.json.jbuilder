json.array!(@players) do |player|
  json.extract! player, :id, :name, :team, :number, :age
  json.url player_url(player, format: :json)
end
