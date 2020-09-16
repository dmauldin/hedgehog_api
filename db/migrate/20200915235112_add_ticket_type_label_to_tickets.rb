class AddTicketTypeLabelToTickets < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :ticket_type, null: false, foreign_key: { to_table: "ticket_types" }
  end
end
