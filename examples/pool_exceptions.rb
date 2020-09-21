class TestScoreError < StandardError
end

score = 55
begin
  if score > 60
    puts "pass with #{score}"
  else
    raise TestScoreError, "fail with #{score}"
  end
rescue TestScoreError => error
  puts "recieved #{error.message}"
  score = 63
  retry
ensure
  puts "good job"
end

def drive(destination)
  begin
    if destination == 'Hawaii'
      raise 'No way'
    end
  rescue => error
    puts error.message
  end
end

drive("Hawaii")