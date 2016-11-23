class NewspapersController < ApplicationController
  before_action :set_newspaper, only: [:show, :edit, :update, :destroy]

  # GET /newspapers
  # GET /newspapers.json
  def index
    @newspapers = Newspaper.all.page(params[:page]).per(10)
  end

  # GET /newspapers/1
  # GET /newspapers/1.json
  def show
  end

  # GET /newspapers/new
  def new
    @newspaper = Newspaper.new
  end

  # GET /newspapers/1/edit
  def edit
  end

  # POST /newspapers
  # POST /newspapers.json
  def create
    @newspaper = Newspaper.new(newspaper_params)

    respond_to do |format|
      if @newspaper.save
        format.html { redirect_to @newspaper, notice: 'Assinatura adicionada com sucesso.' }
        format.json { render :show, status: :created, location: @newspaper }
      else
        format.html { render :new }
        format.json { render json: @newspaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newspapers/1
  # PATCH/PUT /newspapers/1.json
  def update
    respond_to do |format|
      if @newspaper.update(newspaper_params)
        format.html { redirect_to @newspaper, notice: 'Assinatura atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @newspaper }
      else
        format.html { render :edit }
        format.json { render json: @newspaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newspapers/1
  # DELETE /newspapers/1.json
  def destroy
    @newspaper.destroy
    respond_to do |format|
      format.html { redirect_to newspapers_url, notice: 'Assinatura deletada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newspaper
      @newspaper = Newspaper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newspaper_params
      params.require(:newspaper).permit(:name, :address, :amount, :description)
    end
end
