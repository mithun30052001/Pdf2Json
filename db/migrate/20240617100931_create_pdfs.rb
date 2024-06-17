class CreatePdfs < ActiveRecord::Migration[7.0]
  def change
    create_table :pdfs do |t|
      t.string :title
      t.string :pdf

      t.timestamps
    end
  end
end
