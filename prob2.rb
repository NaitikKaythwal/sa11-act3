def parse_invoices(text)
  date_pattern = /\d{4}-\d{2}-\d{2}/
  invoice_number_pattern = /INV\d{3}/
  client_name_pattern = /\w+ \w+/
  amount_pattern = /\$\d+/
  dates = text.scan(date_pattern).flatten
  invoice_numbers = text.scan(invoice_number_pattern).flatten
  client_names = text.scan(client_name_pattern).flatten
  amounts = text.scan(amount_pattern).flatten
  dates.each_with_index do |date, index|
    invoice_number = invoice_numbers[index]
    client_name = client_names[index]
    amount = amounts[index]
    puts "Date: #{date}, Invoice number: #{invoice_number}, Client: #{client_name}, Amount: #{amount}"
  end
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)
