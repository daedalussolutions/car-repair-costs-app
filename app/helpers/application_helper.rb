module ApplicationHelper
    def convert_price(amount_currency, currency)
        exchange_rate = get_exchange_rate(currency)
        (amount_currency * exchange_rate).round(2)
    end

    def currency_symbol(currency)
        case currency

        when 'USD'
            '$'
        when 'CAD'
            '$'
        when 'EUR'
            '€'
        when 'GBP'
            '£'
        else
            '$'
        end
    end

    def get_exchange_rate(currency) # This should be done with an API call at some point.
        case currency
        when 'USD'
          1.0
        when 'CAD'
          1.36
        when 'EUR'
          0.85
        when 'GBP'
          0.75
        else
          1.0
        end
    end
end
