class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :type

      t.belongs_to :channel, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
