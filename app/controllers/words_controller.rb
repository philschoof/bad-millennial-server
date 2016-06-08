class WordsController < ProtectedController
  before_action :set_word, only: [:show, :update, :destroy]

  # GET /words
  # GET /words.json
  def index
    # @words = current_user.words.order("id DESC").all
    @words = current_user.words.order("entry ASC").all

    render json: @words
  end

  # GET /words/1
  # GET /words/1.json
  def show
    render json: @word
  end

  # POST /words
  # POST /words.json
  def create
    @word = current_user.words.build(word_params)

    if @word.save
      render json: @word, status: :created, location: @word
    else
      render json: @word.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /words/1
  # PATCH/PUT /words/1.json
  def update
    @word = Word.find(params[:id])

    if @word.update(word_params)
      head :no_content
    else
      render json: @word.errors, status: :unprocessable_entity
    end
  end

  # DELETE /words/1
  # DELETE /words/1.json
  def destroy
    @word.destroy

    head :no_content
  end

  private

    def set_word
      @word = current_user.words.find(params[:id])
    end

    def word_params
      params.require(:word).permit(:entry, :definition)
    end
end
