task :send_reminders => :environment do
  Flight.where({ :message_sent => false }).where("departs_at < ?", 15.minutes.from_now + 24.hours).find_each do |flight|
    p flight.user.phone_number
    flight.message_sent = true
    flight.save
  end
end
