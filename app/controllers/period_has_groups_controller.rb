class PeriodHasGroupsController < ApplicationController
   before_action :set_period_has_group, only: [:show, :edit, :update, :destroy]

  def index
    @period_has_groups = PeriodHasGroup.all
  end
  def show
  end

  def new
    @period_has_group = PeriodHasGroup.new
  end
  def create
      @period_has_group = PeriodHasGroup.new(period_has_group_params)
      respond_to do |format|
        if @period_has_group.save
          format.html {  redirect_to @period_has_group, notice: 'Period has group creado.'  }
        else
          format.html { render :new }
        end
      end
  end

  def edit
  end

    def update
      respond_to do |format|
        if @period_has_group.update(period_has_group_params)
          format.html {  redirect_to @period_has_group, notice: 'Period has group ha sido editado.'  }
        else
          format.html { render :new }
        end
      end
    end

  def destroy
      respond_to do |format|
        if @period_has_group.destroy
          format.html { redirect_to @period_has_group, notice: "Elemento eliminado" }
        else
          format.html { render :index, notice: "Elemento no eliminado" }
        end
      end
    end

  private
      def period_has_group_params
        params.require(:period_has_group).permit(:period_id,:subject_id,:teacher_id,:lunes,:martes,:miercoles,:jueves,:viernes,:sabado,:horario_clases)
      end

      def set_period_has_group
        @period_has_group = PeriodHasGroup.find(params[:id])
      end
  end

end
