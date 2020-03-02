class AddDefaultToMessageSentInFlights < ActiveRecord::Migration[6.0]
  def up
    change_column :flights, :message_sent, :boolean, default: false
  end
  
  def down
    change_column :flights, :message_sent, :boolean, default: nil
  end
end
