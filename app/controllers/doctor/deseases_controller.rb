module Doctor
  class DeseasesController < BaseController
    before_action :find_desease, only: [:show, :edit, :update, :destroy]
    def index
      @deseases = Desease.all
    end

    def new
      @desease = Desease.new
    end

    def create
      @desease = Desease.new desease_params
      if @desease.save
        flash[:success] = "Success"
        redirect_to doctor_deseases_path
      else
        flash[:danger] = "Fail"
        render :new
      end
    end

    def edit

    end

    def update
      if @desease.update_attributes desease_params
        flash[:success] = "Cập nhật thành công"
      else
        flash[:danger] = "Cập nhật thất bại"
      end
      redirect_to doctor_deseases_path
    end

    def destroy
      if @desease.destroy
        flash[:success] = "Xóa thành công"
      else
        flash[:danger] = "Xóa thất bại"
      end
      redirect_to doctor_deseases_path
    end

    private

    def find_desease
      return if @desease = Desease.find_by(id: params[:id])
      flash[:danger] = "Không tìm thấy triệu chứng"
      redirect_to doctor_deseases_path
    end

    def desease_params
      params.require(:desease).permit :pet_type, :name, :symptom, :reason, :treatment, :description
    end
  end
end
