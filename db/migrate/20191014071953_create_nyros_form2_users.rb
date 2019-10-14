class CreateNyrosForm2Users < ActiveRecord::Migration[5.2]
  def change
    create_table :nyros_form2_users do |t|
      t.string :name
      t.string :email
      t.bigint :mobile

      t.timestamps
    end
  end
end
