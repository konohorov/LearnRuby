require 'pg'

class SubPage < Page

  def initialize(name)
    super
  end

  def method3
    self
  end

  def method4
    module_method
  end

  def method5
    q = queries('player_first_name')
    team_name = $connection.exec(q).getvalue(0,0)
  end

end
