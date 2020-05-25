class HomesController < ApplicationController

    layout 'home'

    def index
    end

    def order
    end

    def tracking
    end

    def job
        @job = Assignment.find_by_unique_code(params[:unique_code])
    end
    
end