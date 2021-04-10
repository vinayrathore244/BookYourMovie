class ChargesController < ApplicationController
    before_action :authenticate_user!
    def new
    end

    def create
      @totalAmount = JSON.parse(params[:totalAmount])
      
      customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      )
      
      charge = Stripe::Charge.create(
      customer: customer.id,
      amount:  @totalAmount,
      description: 'Rails Stripe customer',
      currency: 'inr'
      )
      
      rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end
  end
