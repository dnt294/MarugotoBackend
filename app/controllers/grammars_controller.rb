class GrammarsController < ApplicationController
    include ApplicationHelper

    before_action :set_grammar, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

    # GET /grammars
    def index
        #@grammars = Grammar.all.includes(:lesson)
        @lessons_with_grammar = Lesson.marugoto_books.with_grammars.includes(:grammars)
    end

    # GET /grammars/1
    # GET /grammars/1.json
    def show
    end

    # GET /grammars/new
    def new
        @grammar = Grammar.new(lesson_id: default_lesson)
    end

    # GET /grammars/1/edit
    def edit
    end

    # POST /grammars

    def create
        @grammar = Grammar.new(grammar_params)
        cache_marugoto_lesson(@grammar.lesson_id)
        if @grammar.save
            redirect_to @grammar, flash: {success: 'Grammar was successfully created.'}
        else
            render :new
        end
    end

    # PATCH/PUT /grammars/1

    def update
        if @grammar.update(grammar_params)
            redirect_to @grammar, flash: {success: 'Grammar was successfully updated.'}
        else
            render :edit
        end
    end

    # DELETE /grammars/1

    def destroy
        @grammar.destroy
        redirect_to grammars_url, notice: 'Grammar was successfully destroyed.'
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_grammar
        @grammar = Grammar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grammar_params
        params.require(:grammar).permit(:title, :explanation, :note, :lesson_id, examples_attributes: [:id, :_destroy, :sentences, :kanji_version, :meaning, :note])
    end
end
