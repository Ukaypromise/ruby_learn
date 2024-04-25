require 'csv'
def parse_log
  filename = 'data/access_log_20190521-211058.log'

  access_log = File.open(filename, 'r') do |file|
    file.readlines
  end

  signup_log_lines = access_log.select do |line|
    line.include?('/signup?email=')
  end

  user_data = signup_log_lines.map do |line|
    parsed_array = line.split('" "')
    email = extract_email(parsed_array.first)
    user_agent_string = parsed_array.last
    browser = determine_browser(user_agent_string)
    [email, browser]
  end

  cross_referrences_data = user_data.map do |line|
    cross_referrences(line)
  end

  cross_referrences_data

end

def determine_browser(user_agent)
  return "Firefox" if user_agent.include?("Firefox") && user_agent.include?("Gecko")
  return "Chrome" if user_agent.include?("Chrome")
  return "Safari" if user_agent.include?("Gecko") && user_agent.include?("Safari")
  return "Other"
end

def extract_email(log_line)
  # email = log_line.scan(/GET \/signup\?email=([^ ]+)/).flatten
   email = log_line.match(/signup\?email\=([a-zA-Z0-9@.]*) HTTP\//).captures.first
  puts email
end

def cross_referrences(log_line)
  users = CSV.open('data/users.csv', 'r') do |csv|
    csv.readlines
  end

  users.map! do |line|
    if line.length == 3
      if line[0].nil?
        line[0] = "Unknown"
      end

      if line[1].nil?
        line[1] = "Unknown"
      end
    else
     if line[0].match(/([a-zA-Z0-9@.]*)/).captures.first
       email = line[0]
       line[0] = 'Unknown'
       line.push("Unknown")
       line.push(email)
     end
    end
    line
  end

  users
end

parse_log
puts "====================="
cross_referrences("")
