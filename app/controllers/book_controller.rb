class BookController < ApplicationController
skip_before_action :verify_authenticity_token

def index
   
    curr_usr=Book.all
    if(curr_usr.nil?)
        render json: "No data Found"
    else
    render json: curr_usr
    end
end

def show
    v = Book.find(params[:id])
    render json: v
    # v = Property.where('city':params[:city])
    # puts params[:city]
    # puts v
    # render json: v
end
def create
    puts ("test")
    puts params[:bookAuthor]
    Book.create('bookName': params[:bookName],
        'bookAuthor': params[:bookAuthor], 
        'bookQuantity': params[:bookQuantity] )
render json: "Data entered"

end

def update
    p=Book.find(params[:id].to_i)
    puts params[:bookName]
    p.update('bookName': params[:bookName],
    'bookAuthor': params[:bookAuthor], 
    'bookQuantity': params[:bookQuantity] )
    render json: "data updated"
end
def destroy 
    p = Property.find(params[:id])
    p.destroy
    render json: "Data Deleted"
end
end
