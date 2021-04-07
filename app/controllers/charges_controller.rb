class ChargesController < ApplicationController
  def index

  end

  def create

  customer = Stripe::Customer.create({
    :email =>'vinayharda244@gmail.com',
    source: params[:stripeToken],
  })

  charge = Stripe::Charge.create({
    customer: customer.id,
    amount: @amount,
    description: 'Rails Stripe customer',
    currency: 'INR',
  })

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path

end
end
