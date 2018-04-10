module SpreeP24::PaymentHelper
  def payment_button(data)
    render :partial => 'spree_p24/payment_form', :locals => { :data => SpreeP24.prepare_form(data)}
  end
end
