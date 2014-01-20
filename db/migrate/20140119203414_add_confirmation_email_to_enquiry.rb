class AddConfirmationEmailToEnquiry < ActiveRecord::Migration
  def change
    add_column :enquiries, :confirmation_email, :string
  end
end
