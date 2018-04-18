module Spree
  class PaymentMethod::P24 < PaymentMethod

    preference :p24_merchant_id, :string
    preference :p24_pos_id, :string
    preference :crc_key, :string


    preference :p24_id_sprzedawcy, :string
    preference :p24_language, :string, :default => "pl"
    preference :crc_key, :string
    preference :test_mode, :boolean, :default => false

  end
end
