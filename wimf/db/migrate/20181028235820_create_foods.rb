class CreateFoods < ActiveRecord::Migration
  def change
    create_table 'foods' do |t|
      t.string 'title'
      t.string 'country'
      t.string 'cslories'
      t.text 'ingredients'
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end
