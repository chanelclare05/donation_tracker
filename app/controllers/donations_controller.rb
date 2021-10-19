class DonationsController < ApplicationController
  def index
    @donations = Donation.all
  end

  def new #responsibility: render a new form #route: /donations/new #path: new_donation_path
    @donation = Donation.new
  end

  def edit
    @donation = Donation.find_by_id(params[:id])
  end

  def show #show a single donation / '/donations/:id' / donation_path(donation id)
    @donation = Donation.find_by_id(params[:id])
  end

  def create #responsibility: process a new form #route: /donations #path: new_donation_path (only used on server side)
    @donation = Donation.new(donation_params)
      if @donation.save
        redirect_to donation_path(@donation)
      else 
        render :new
      end 
  end 

  def update
    @donation = Donation.find_by_id(params[:id])
    @donation.update(donation_params(:amount))
  end 

  def destroy
    @donation = Donation.find_by_id(params[:id])
    @donation.destroy
    redirect_to donations_path
  end 

  private 

  def donation_params #strong params: permits fields being submitted 
    params.require(:donation).permit(:amount, :date, :user_id, :organization_id)
  end 
end
