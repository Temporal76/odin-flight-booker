class FlightsController < ApplicationController
 
  def index
    @airport_options = Airport.all.map{ |a| ["#{a.code} - #{a.id}", a.id ] }
    @searched_flights = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id], start_date: params[:start_date])
   
  end





 


end
