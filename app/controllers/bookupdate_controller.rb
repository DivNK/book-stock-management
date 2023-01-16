class BookupdateController < ApplicationController

    def index
        
        a = params[:bookAuthor]== nil
        q = params[:bookQuantity]== nil
        bk = Book.find_by('bookName': params[:bookName])
        puts "************************************"
        puts !bk.nil?
        if(!bk.nil?)
    
        if(!a)
            bk.update('bookAuthor': params[:bookAuthor])
            puts "author"
        end
        if(!q)
            bk.update('bookQuantity': params[:bookQuantity])
            puts "quantity"
        end
    end
end
end
