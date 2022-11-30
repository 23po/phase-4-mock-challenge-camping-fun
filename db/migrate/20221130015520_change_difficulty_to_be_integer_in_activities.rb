class ChangeDifficultyToBeIntegerInActivities < ActiveRecord::Migration[6.1]
  def change
    change_column :activities, :difficulty, :integer

  end
end
