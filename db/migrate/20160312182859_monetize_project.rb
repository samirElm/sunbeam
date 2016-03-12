class MonetizeProject < ActiveRecord::Migration
  def change
    add_monetize :projects, :total_budget
    add_monetize :projects, :current_budget
  end
end
