module SomeModule

  def queries(query_name)
    queries = {}
    File.open('../resources/queries.txt') do |file|
      file.each_line do |line|
        key, value = line.chomp.split(": ")
        queries[key] = value
      end
    end
    queries[query_name]
  end

  def wait_for(locator)
    wait = Selenium::WebDriver::Wait.new
    wait.until { @driver.find_element(locator) }
  end

  SOME_CONSTANT = 'abc'

end
