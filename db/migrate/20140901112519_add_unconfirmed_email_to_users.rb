class AddUnconfirmedEmailToUsers < ActiveRecord::Migration
  def self.up
  	add_column :users, :unconfirmed_email, :string
  end

  def self.down
  	remove_column :unconfirmed_email
  end
end
