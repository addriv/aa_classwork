class ChangePostsToAuthorId < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :user_id, :author_id
  end
end
