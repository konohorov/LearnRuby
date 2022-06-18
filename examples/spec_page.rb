require 'rspec'
require_relative 'page'
require_relative 'sub_page'
require_relative 'some_module'

RSpec.describe 'Page' do
  include SomeModule
  it 'test1' do
    page = Page.new("name")

    # puts page
    #
    # puts page.method1
    #
    # puts page.method1.method1_1
    #
    # puts page.method1.method2
    # puts page.method1.method2.method3
    # puts page.method1.method2.method3.method4
    # puts page.method2.method5
    # p page.method1_2
    # p SomeModule::SOME_CONSTANT
  end

  it "block" do
    p page.test_block
  end
end
