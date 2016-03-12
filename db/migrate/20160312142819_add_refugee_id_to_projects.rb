class AddRefugeeIdToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :refugee, index: true, foreign_key: true
  end
end
