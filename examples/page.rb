require_relative 'some_module'
require 'pg'

class Page
  include SomeModule

  $connection = PG.connect( hostaddr: '134.122.66.20',
                            port: 5432,
                            dbname: 'hkl_resources_api',
                            user: 'postgres',
                            password: 'postgres_pass' )

  def initialize(name)
    @name = name
  end

  def method1
    self
  end

  def method1_1
    module_method
  end

  def method1_2
    queries('team_name')
  end

  def method2
    SubPage.new(@name)
  end

  def test_block
    test_block { 'in_block' }
    block_given? ? yield : 'no block'
  end
end
