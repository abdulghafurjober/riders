class RequestsController < ApplicationController
    before_action :get_request, only: :show

    def index
        @requests = Request.all.order(created_at: :desc)
    end

    def show
    end

    def create
        @request = Request.new(request_params)
        if @request.save
            @initiate = Toyyibpay::Bill.new({
                                            bill_amount: request_params[:total_price].to_f  * 100 + (request_params[:insurance] == '1' ? 0.85 : 0).to_f * 100 ,
                                            bill_name: 'Pembayaran tempahan delivery.',
                                            bill_desc: "Pembayaran #{request_params[:customer_name]}",
                                            bill_to: request_params[:customer_name],
                                            bill_email: request_params[:customer_email],
                                            bill_phone: request_params[:customer_phone],
                                        })                       
            if @initiate.execute
                @request.update(billcode: @initiate.code)
                redirect_to "https://toyyibpay.com/#{@initiate.code}"
            end
        end
    end
    

    private

    def request_params
        params.require(:request).permit(:date, :customer_name, :customer_phone, :customer_address, :pickup_name, :pickup_phone, :pickup_address,
                                        :notes, :additional_notes, :area, :total_price, :distance, :duration, :insurance, :delivery_type, :customer_email)
    end

    def get_request
        @request = Request.find(params[:id])
    end
end
