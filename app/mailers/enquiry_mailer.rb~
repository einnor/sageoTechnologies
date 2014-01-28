class EnquiryMailer < ActionMailer::Base
  #default from: "from@example.com"

  def enquiry_mail(email)
  	@email = email
  	@first_name = email.first_name
  	@second_name = email.second_name
  	@telephone = email.telephone
  	@url = "http://www.sageotechnologies-herokuapp.com"
  	@subject = email.subject
  	@body = email.body

  	mail(to: "ronnienyaga@gmail.com", subject: "Email through the website", from: email.email)
  end

end
