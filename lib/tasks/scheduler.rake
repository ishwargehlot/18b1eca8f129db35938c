

task :send_favourite_email => :environment do
  puts "Sending Favourite Email"
  	Tvshow.favourite_email_send
  puts "done."
end