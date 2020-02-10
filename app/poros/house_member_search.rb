class HouseMemberSearch
  attr_reader :house

  def initialize(house)
    @house = house
  end

  def member_count
    members_by_house.length
  end

  def members_by_house
    service = HarryPotterService.new
    members = []
    service.members.each do |member|
      if member[:house] == house
        data = {
          name: member[:name],
          role: member[:role],
          house: member[:house],
          patronus: member[:patronus]
        }
        members << Member.new(data)
      end
    end
  end
end
