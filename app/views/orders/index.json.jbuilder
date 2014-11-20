json.array!(@orders) do |order|
  json.extract! order, :id, :name, :address, :email, :pay_type
  json.url order_url(order, format: :json)
end

Bitte achten Sie auf korrekte Eintragung der Links. Nutzen Sie hierzu am besten die Befehle Kopieren und Einfügen.