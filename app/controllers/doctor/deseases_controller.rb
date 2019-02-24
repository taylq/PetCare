module Doctor
  class DeseasesController < BaseController
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

    private

    def desease_params
      params.require(:desease).permit :pet_type, :name, :symptom, :reason, :treatment, :description
    end
  end
end
