class PaymentsController < ApplicationController
    layout 'home'

    def index
        if params[:billcode].present?
            @request = Request.find_by_billcode(params[:billcode])
            if params[:status_id] == '1'
                @request.update(status: 'paid')
            else
                @request.update(status: 'failed')
            end
        end
    end

    def success
    end

    def callback
        
    end
end