class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
   puts @line.split(": ").last.strip
  end

  def log_level
    puts @line.split(": ").first.gsub('[', '').gsub(']', '').downcase
  end

  def reformat
    firstline = @line.split(": ").last.strip
    secondline = @line.split(": ").first.gsub('[', '').gsub(']', '').downcase
    puts "#{firstline} (#{secondline})"
  end
end

LogLineParser.new('[ERROR]: Invalid operation').reformat
