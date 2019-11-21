task :send_sms => :environment do
  Flight.where({ :message_sent => false }).where("departs_at < ?", 10.minutes.from_now + 24.hours).find_each do |flight|
    p flight.user.phone_number
  end
end
