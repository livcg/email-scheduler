class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :to
      t.string :subject
      t.text :body
      t.datetime :send_date_time

      t.timestamps null: false
    end
  end
end
