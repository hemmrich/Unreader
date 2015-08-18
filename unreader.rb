require 'gmail'
require 'date'
require 'yaml'

config = YAML.load_file('config.yaml')

username = config['username']
password = config['password']
from_param = config['from']
before_param = Date.parse(Time.now.strftime('%Y-%m-%d'))


Gmail.connect(username, password) do |gmail|
  from_param.each do |from|
    gmail.inbox.find(:unread, from: from, before: before_param).each do |email|
      email.read!
      puts "Marked '#{email.envelope['subject']}' as read"
    end
  end
end
