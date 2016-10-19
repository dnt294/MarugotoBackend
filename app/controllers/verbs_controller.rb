class VerbsController < ApplicationController
    def index

        @ftvs = NewWord.ftv


        @stvs = NewWord.stv

        @ftv_count = @ftvs.length
        @stv_count = @stvs.length

        @verbs_count = @ftv_count + @stv_count
    end
end
