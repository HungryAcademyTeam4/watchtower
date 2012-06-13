class ChangeUserDisplayNameToUserNameInMessage < ActiveRecord::Migration
  def change
    rename_column :messages, :user_display_name, :user_name
  end
end
