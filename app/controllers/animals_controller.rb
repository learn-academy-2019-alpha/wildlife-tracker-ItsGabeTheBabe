class AnimalsController < ApplicationController
    def index
@animals = Animal.all.order("id ASC")
    end
    
    def new
        @animals = Animal.new
    end
    
    def create
        @animal = Animal.new(animals_params)
        
        if @animal.save
            redirect_to animals_path
        else
            render action :new
        end
    end
    
    def edit
       @animal = Animal.find(params[:id])
    end

   def update
       @animal = Animal.find(params[:id])
       if @animal.update_attributes(animals_params)
           redirect_to animals_path(@animals)
       else
           render 'edit'
       end
   end
    
    def show
        @animal = Animal.find(params[:id])
    end
    
    def destroy
        @animal = Animal.find(params[:id])
        @animal.destroy
        redirect_to animals_path
    end
    
    private
    
    def animals_params
        params.require(:animal).permit(:common_name, :latin_name, :kingdom)
    end
end
