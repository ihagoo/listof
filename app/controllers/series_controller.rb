class SeriesController < ApplicationController
  before_action :set_serie, only: %i[ show edit update destroy ]

  # GET /series or /series.json
  def index
    @series = Serie.page(params[:page]).per(5)
  end

  # GET /series/1 or /series/1.json
  def show
  end

  # GET /series/new
  def new
    @serie = Serie.new
  end

  # GET /series/1/edit
  def edit
  end

  # POST /series or /series.json
  def create
    @serie = Serie.new(serie_params)

    respond_to do |format|
      if @serie.save
        format.html { redirect_to @serie, notice: "Série criada com sucesso." }
        format.json { render :show, status: :created, location: @serie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @serie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /series/1 or /series/1.json
  def update
    respond_to do |format|
      if @serie.update(serie_params)
        format.html { redirect_to @serie, notice: "Série atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @serie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @serie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /series/1 or /series/1.json
  def destroy
    @serie.destroy!

    respond_to do |format|
      format.html { redirect_to series_path, status: :see_other, notice: "Série removida com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serie
      @serie = Serie.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def serie_params
      params.expect(serie: [ :name, :gender, :status, :assessment, :comment ])
    end
end
