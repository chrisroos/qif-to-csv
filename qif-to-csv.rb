require 'bundler/setup'

require 'qif'
require 'csv'

def puts_usage_message_and_exit
  puts "Usage: #{__FILE__} /path/to/filename.qif"
  exit 1
end

unless filename = ARGV.shift
  puts_usage_message_and_exit
end

unless File.exists?(filename)
  puts_usage_message_and_exit
end

qif_data = File.read(filename)
qif = Qif::Reader.new(qif_data)
qif.each do |transaction|
  puts [transaction.date, transaction.payee, transaction.amount].to_csv
end
