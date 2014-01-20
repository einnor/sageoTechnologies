class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :first_name
      t.string :second_name
      t.string :email
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
