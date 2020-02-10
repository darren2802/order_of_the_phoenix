class HarryPotterService
  def members_by_house(house)
    api_key = ENV['POTTER_API_KEY']
    get_json("/v1/characters?key=#{api_key}")
  end

  private

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new('https://www.potterapi.com')
  end
end
