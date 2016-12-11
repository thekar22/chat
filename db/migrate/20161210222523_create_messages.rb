class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :text
      t.datetime :date

      t.belongs_to :user, index: true
      t.belongs_to :channel, index: true

      t.timestamps null: false
    end
  end
end
