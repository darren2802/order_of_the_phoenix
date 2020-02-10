require 'rails_helper'

describe Member do
  it 'exists' do
    attributes = {
      name: 'Cuthbert Binns',
      role: 'Professor, History of Magic',
      house: 'Gryffindor',
      patronus: 'goat'
    }

    member = Member.new(attributes)

    expect(member).to be_a Member
    expect(member.name).to eq('Cuthbert Binns')
    expect(member.role).to eq('Professor, History of Magic')
    expect(member.house).to eq('Gryffindor')
    expect(member.patronus).to eq('goat')
  end
end
