class AddingBetaUserTable < ActiveRecord::Migration
  def change
    create_table(:betausers) do |t|
      t.string :email, null: false
      t.string :name, null: false
    end
  end
end
