# Received help with assignment from John Verbosky via a zoom session.

require 'sinatra'
require 'sinatra/reloader' if development?  
require_relative 'coin_changer.rb'

get '/' do
  erb :get_coins
end

post '/your_input_change' do

  	amount = params[:amount].to_i
  	change = make_change(amount)
 
	"Your change from the money changer is #{change}."

end

