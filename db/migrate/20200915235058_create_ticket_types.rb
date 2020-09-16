class CreateTicketTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_types do |t|
      t.string :label

      t.timestamps
    end
  end
end
