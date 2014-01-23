class PagesController < ApplicationController

  before_action :set_enquiry, only: [:home, :about, :services, :clientsAndProjects, :partners]

  def home
  	@title = "Home"
  end

  def about
  	@title = "About Us"
  end

  def services
  	@title = "Services"
  end

  def clientsAndProjects
  	@title = "Clients and Projects"
  end

  def contactUs
  	@title = "Contact Us"
  end

  def partners
  	@title = "Partners"
  end

  def create
		@enquiry = Enquiry.new(enquiry_params)
		
		if @enquiry.save
  		if EnquiryMailer.enquiry_mail(@enquiry).deliver
  			redirect_to root_path, :notice => "The enquiry was successfully sent."
  		end
  	else
  		render 'new'
  	end
  end

  private

  def set_enquiry
  	@enquiry = Enquiry.new
  end

  def enquiry_params
  	params.require(:enquiry).permit(:first_name, :second_name, :telephone_number, :email,
  	:confirmation_email, :subject, :body)
  end
end
