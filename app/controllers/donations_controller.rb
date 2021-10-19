class DonationsController < ApplicationController
  def index
    @donations = Donation.all
  end

  def new #responsibility: render a new form #route: /donations/new #path: new_donation_path
    @donation = Donation.new
  end

  def edit
  end

  def show
  end

  def create #responsibility: process a new form #route: /donations #path: new_donation_path (only used on server side)
    @donation = Donation.create(donation_params)
  end 

  def update
  end 

  def destroy 
  end 

  private 

  def donation_params #strong params: permits fields being submitted 
    reqire(:donation).permit(:amount, :date, :user_id, :organization_id)
  end 
end
