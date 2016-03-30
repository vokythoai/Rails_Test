class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|

      t.timestamps null: false
      t.string :account_name
      t.string :account_role
    end
  end
end
