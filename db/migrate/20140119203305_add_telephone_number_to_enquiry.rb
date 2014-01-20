class AddTelephoneNumberToEnquiry < ActiveRecord::Migration
  def change
    add_column :enquiries, :telephone_number, :string
  end
end
