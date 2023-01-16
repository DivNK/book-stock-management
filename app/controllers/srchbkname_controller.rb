class SrchbknameController < ApplicationController
    
    def index
        
        a = params[:bookName]== nil
       if(a)
        render json: "Enter Book Name"
       end
        bk = Book.find_by('bookName': params[:bookName])
        puts "************************************"
        puts !bk.nil?
        if(!bk.nil?)
            render json: bk
    end
end
end
