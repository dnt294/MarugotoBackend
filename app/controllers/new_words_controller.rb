class NewWordsController < ApplicationController
    before_action :set_new_word, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

    # GET /new_words
    # GET /new_words.json
    def index
        @new_words = NewWord.all.includes(:lesson)
    end

    # GET /new_words/1
    def show
    end

    # GET /new_words/new
    def new
        @new_word = NewWord.new
    end

    # GET /new_words/1/edit
    def edit
    end

    # POST /new_words
    def create
        clear_form_params
        @new_word = NewWord.new(new_word_params)
        cache_lesson_id = @new_word.lesson_id
        respond_to do |format|
            if @new_word.save
                format.js {
                    @new_words = NewWord.of_book(@new_word.lesson_id).includes(:lesson)
                    @new_word = NewWord.new(lesson_id: cache_lesson_id)
                    flash.now[:notice] = 'New word created!'
                }

            else
                format.js
            end
        end
    end

    # PATCH/PUT /new_words/1
    def update
        clear_form_params
        respond_to do |format|
            if @new_word.update(new_word_params)
                format.js {
                    @new_words = NewWord.of_book(@new_word.lesson_id).includes(:lesson)
                    @new_word = NewWord.find(params[:id])
                    flash.now[:success] = 'New word updated!'
                }
            else
                format.js
            end
        end
    end

    # DELETE /new_words/1
    # DELETE /new_words/1.json
    def destroy
        @new_word.destroy
        respond_to do |format|
            format.html { redirect_to new_words_url, notice: 'New word was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    def sort
        @new_words = NewWord.of_book(params[:lesson]).includes(:lesson)
    end

    def search
        @new_words = NewWord.search_for( params[:word]).includes(:lesson)
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_word
        @new_word = NewWord.find(params[:id])
    end

    def clear_form_params
        params[:new_word].delete(:verb_form_attributes) if params[:new_word][:word_type] != "Verb"
        params[:new_word].delete(:adj_form_attributes) if params[:new_word][:word_type] != "Adj"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_word_params
        params.require(:new_word).permit(:word, :kanji_version, :meaning, :note, :lesson_id, :word_type, adj_form_attributes: [:adj_type], verb_form_attributes: [:verb_type, :dictionary_form, :nai_form, :te_form, :ta_form], examples_attributes: [:id, :_destroy, :sentences, :kanji_version, :meaning, :note])
    end
end
