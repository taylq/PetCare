module Secretary
  class BillsController < BaseController
    before_action :find_params

    def new
      @bill = Bill.new
    end

    def show
    end

    private

    def bill_params

    end

    def find_params

    end
  end
end
