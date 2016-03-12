class AddStepsAndNeedsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :steps, :text
    add_column :projects, :needs, :text
  end
end
