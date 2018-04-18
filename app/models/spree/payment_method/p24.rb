module Spree
  class PaymentMethod::P24 < PaymentMethod

    preference :p24_id_sprzedawcy, :string
    preference :url, :string, :default => "https://secure.przelewy24.pl/index.php"
    preference :url_transakcja, :string, :default => "https://secure.przelewy24.pl/transakcja.php"
    preference :test_url, :string, :default => "https://sandbox.przelewy24.pl/index.php"
    preference :test_url_transakcja, :string, :default => "https://sandbox.przelewy24.pl/transakcja.php"
    preference :p24_language, :string, :default => "pl"
    preference :crc_key, :string
    preference :test_mode, :boolean, :default => false

  end
end
