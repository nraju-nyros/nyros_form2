class CreateNyrosForm2Failures < ActiveRecord::Migration[5.2]
  def change
    create_table :nyros_form2_failures do |t|
      t.text :message

      t.timestamps
    end
  end
end
