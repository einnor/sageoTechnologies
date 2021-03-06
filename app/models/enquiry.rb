# == Schema Information
#
# Table name: enquiries
#
#  id                 :integer          not null, primary key
#  first_name         :string(255)
#  second_name        :string(255)
#  email              :string(255)
#  subject            :string(255)
#  body               :text
#  created_at         :datetime
#  updated_at         :datetime
#  telephone_number   :string(255)
#  confirmation_email :string(255)
#

class Enquiry < ActiveRecord::Base

	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :first_name,						presence: true,
																		length: {maximum: 50}
	validates :second_name,						presence: true,
																		length: {maximum: 50}
	validates :email,									presence: true,
																		format: {with: email_regex}
	validates :subject,								presence: true,
																		length: {maximum: 60}
	validates :body,									presence: true,
																		length: {maximum: 512}
	validates :telephone_number,			presence: true,
																		length: {maximum: 15}
	validates :confirmation_email,		presence: true,
																		format: {with: email_regex}

end
