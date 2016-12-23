class FixUsersCustomValues < ActiveRecord::Migration
  def self.up
    CustomValue.where("customized_type = 'User'").
      update_all("customized_type = 'Principal'")
  end

  def self.down
    CustomValue.where("customized_type = 'Principal'").
      update_all("customized_type = 'User'")
  end
end
