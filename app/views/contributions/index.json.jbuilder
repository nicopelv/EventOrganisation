json.array!(@contributions) do |contribution|
  json.extract! contribution, :id, :name, :officialContribution
  json.url contribution_url(contribution, format: :json)
end
