class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.references :project, null: false, foreign_key: true
      t.references :status, null: false, foreign_key: true
      t.references :priority, null: false, foreign_key: true
      t.references :submitter, null: false, foreign_key: { to_table: "users" }
      t.references :assignee, null: true, foreign_key: { to_table: "users" }

      t.timestamps
    end
  end
end
