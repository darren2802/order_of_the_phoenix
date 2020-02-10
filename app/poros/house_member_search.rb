class HouseMemberSearch
  attr_reader :house

  def initialize(house)
    @house = house
  end

  def member_count
    members.count
  end

  def members_by_house
    service = HarryPotterService.new
    member_data = {}
    service.members.each do |member|
      if member[:house] == house
        member_data[:name] = member[:name]
        member_data[:role] = member[:role]
        member_data[:house] = member[:house]
        member_data[:patronus] = member[:patronus] if member[:patronus]
      end
    end
    require "pry"; binding.pry
  end
end
