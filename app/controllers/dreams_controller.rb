# frozen_string_literal: true

class DreamsController < ProtectedController
  before_action :set_dream, only: %i[show update destroy]

  # GET /dreams
  def index
    @dreams = current_user.dreams.all

    render json: @dreams
  end

  # GET /dreams/1
  def show
    render json: @dream
  end

  # GET /sleepdata

  def chart
    @dreams = current_user.dreams.all.where(:created_at => (Date.today - 7)..(Date.today))

    render json: @dreams
  end

  # POST /dreams
  def create
    @dream = current_user.dreams.build(dream_params)

    if @dream.save
      render json: @dream, status: :created, location: @dream
    else
      render json: @dream.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dreams/1
  def update
    if @dream.update(dream_params)
      render json: @dream
    else
      render json: @dream.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /dreams/1
  # def destroy
  #   @dream.destroy
  # end

  # DELETE /dreams/1
  def destroy_all
    @dreams = current_user.dreams

    @dreams.each(&:destroy)
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_dream
      @dream = current_user.dreams.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dream_params
      params.require(:dream).permit(:date, :mood, :body, :user_id)
    end
end
