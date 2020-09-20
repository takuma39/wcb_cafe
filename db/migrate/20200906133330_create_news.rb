class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|

    	t.string :title
    	t.text :content
    	t.date :day
    	t.string :category
    	t.string :sub_title
    	t.text :sub_content
        t.string :news_image_id

    	t.timestamps
    end
  end
end
