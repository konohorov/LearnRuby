require_relative './blah_blah'

class Users
  USERS = [
    { role: 'a', email: 'admin@27gg.com', password: 'aeL@XJFUdJ3C2G' },
    { role: 'b', email: 'newadmin@user2.com', password: 'mVQ+D98rXRL6kg-3nvHy' },
    { role: 'c', email: 'user1@user.com', password: '#@jpbTunj_f%VXBg3M^D' },
  ].freeze

  def login_as(role, &block)
    block.call
  end

  login_as do
    case role
    when role = 'a' then 'a'
    when role = 'b' then 'b'
    when role = 'c' then 'c'
    else self
    end
  end
end

p Users.new.login_as('a')
