module Director
  class ServicesController < BaseController
    before_action :find_service, except: %i(index create)

    def index
      @services = Service.all
      @service = Service.new
    end

    def create
      @service = Service.new service_params
      if @service.save
        flash[:success] = "Tạo dịch vụ thành công"
      else
        flash[:error] = "Tạo dịch vụ thất bại!"
      end
      redirect_to director_services_path
    end

    def update
      if @service.update_attributes service_params
        flash[:success] = "Cập nhật thành công"
      else
        flash[:danger] = "Cập nhật thất bại"
      end
      redirect_to director_services_path
    end

    def destroy
      if @service.destroy
        flash[:success] = "Xóa thành công"
      else
        flash[:danger] = "Xóa thất bại"
      end
      redirect_to director_services_path
    end

    private

    def find_service
      return if @service = Service.find_by_id(params[:id])
      flash[:danger] = "Không tìm thấy dịch vụ"
      redirect_to director_services_path
    end

    def service_params
      params.require(:service).permit :name, :price
    end
  end
end
