class PagesController < ApplicationController
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
end
