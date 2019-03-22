class SightingsController < ApplicationController
     def index
         @sightings=Sighting.all
     end
     
     def new
         @sighting = Sighting.new
     end
     
     def create
          @sighting = Sighting.new(sightings_params)
        
        if @sighting.save
            redirect_to sightings_path
        else
            render action: :new
        end
     end
     
     def edit
     end
     
     def update
     end
     
     def show
     end 
 
    def destroy
    end

            private
    
    def sightings_params
                params.require(:sighting).permit(:date, :time, :lat, :long, :animal_id)
    end
end
