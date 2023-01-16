class SrchbkauthorController < ApplicationController
    def index
        
        a = params[:bookAuthor]== nil
       if(a)
        render json: "Enter Author"
       end
        bk = Book.where(:bookAuthor => params[:bookAuthor])
        puts "************************************"
        puts !bk.nil?
        if(!bk.nil?)
            render json: bk
    end
end
end
