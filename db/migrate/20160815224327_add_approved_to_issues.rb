class AddApprovedToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :approved, :boolean, defaul: false
  end
end
