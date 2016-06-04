class DictionariesController < ApplicationController
  before_action :set_dictionary, only: [:show, :update, :destroy]

  # GET /dictionaries
  # GET /dictionaries.json
  def index
    @dictionaries = Dictionary.all

    render json: @dictionaries
  end

  # GET /dictionaries/1
  # GET /dictionaries/1.json
  def show
    render json: @dictionary
  end

  # POST /dictionaries
  # POST /dictionaries.json
  def create
    @dictionary = Dictionary.new(dictionary_params)

    if @dictionary.save
      render json: @dictionary, status: :created, location: @dictionary
    else
      render json: @dictionary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dictionaries/1
  # PATCH/PUT /dictionaries/1.json
  def update
    @dictionary = Dictionary.find(params[:id])

    if @dictionary.update(dictionary_params)
      head :no_content
    else
      render json: @dictionary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dictionaries/1
  # DELETE /dictionaries/1.json
  def destroy
    @dictionary.destroy

    head :no_content
  end

  private

    def set_dictionary
      @dictionary = Dictionary.find(params[:id])
    end

    def dictionary_params
      params.require(:dictionary).permit(:word, :definition)
    end
end
