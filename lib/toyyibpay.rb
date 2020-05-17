module Toyyibpay
    class Bill
        def initialize(args = {})
            @secretKey = 'et3an9ib-toem-4k6b-xwv6-lqr94kmvyl8a'
            @categoryCode = 'wmmly117'
            @billAmount = args[:bill_amount]
            @billName = args[:bill_name]
            @billTo = args[:bill_to]
            @billEmail = args[:bill_email]
            @billPhone = args[:bill_phone]
            @billDesc = args[:bill_desc]
            @billCode = ''
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
                    :billReturnUrl => 'http://riders.test/payments',
                    :billCallbackUrl => 'http://riders.test/payment/callback',
                    :billPriceSetting => 1
                }
            }
            results = HTTParty.post("https://toyyibpay.com/index.php/api/createBill", options)
            output = JSON.parse results
            @billCode = output[0]['BillCode']
            return true
        end

        def code
            return @billCode
        end
    end 
end