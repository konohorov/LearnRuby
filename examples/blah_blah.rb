require_relative './users'

class BlahBlah < Users
  from_players { puts 'some string' }

  def from_players
    'from players'
  end
end
