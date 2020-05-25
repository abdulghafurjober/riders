module Toyyibpay
    class Bill
        def initialize(args = {})
            @secretKey = Rails.env.development? ? 'wyzembs7-v0iy-948g-rgpb-3a051fmtg5rh' : 'et3an9ib-toem-4k6b-xwv6-lqr94kmvyl8a'
            @categoryCode =  Rails.env.development? ? 'd1izp5s7' : 'wmmly117'
            @billAmount = args[:bill_amount]
            @billName = args[:bill_name]
            @billTo = args[:bill_to]
            @billEmail = args[:bill_email]
            @billPhone = args[:bill_phone]
            @billDesc = args[:bill_desc]
            @billCode = ''
            @url = Rails.env.development? ? 'dev.toyyibpay.com' : 'toyyibpay.com'
        end

        def execute
            options = { :body => 
                { 
                    :userSecretKey => @secretKey,
                    :categoryCode => @categoryCode ,
                    :billAmount => @billAmount,
                    :billName => @billName,
                    :billTo => @billTo,
                    :billEmail => @billEmail,
                    :billPhone => @billPhone,
                    :billDescription => @billDesc,
                    :billReturnUrl => 'https://deliverypost.co/payments',
                    :billCallbackUrl => 'https://deliverypost.co/payment/callback',
                    :billPriceSetting => 1,
                    :billPayorInfo => 1
                }
            }
            results = HTTParty.post("https://#{@url}/index.php/api/createBill", options)
            output = JSON.parse results
            @billCode = output[0]['BillCode'] 
            return true
        end

        def code
            return @billCode
        end
    end 
end