require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end
  
  get'/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    
    add subtract multiply divide
    case capacity
    when params[:operation]
      "You ran out of gas."
    when 1..20
      "The tank is almost empty. Quickly, find a gas station!"
    when 21..70
      "You should be ok for now."
    when 71..100
      "The tank is almost full."
    else
      "Error: capacity has an invalid value (#{capacity})"
    end
end