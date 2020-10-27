require_relative 'config/environment'

class App < Sinatra::Base
get '/reversename/:name' do
  "#{params[:name].reverse}"

end

get '/square/:number' do
  "#{params[:number].to_i ** 2}"
end

get '/say/:number/:phrase' do
  @number = params[:number].to_i
  @phrase = params[:phrase]
  @output = ""
  @number.times do 
    @output += @phrase
  end
  "#{@output}"
end



get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/:operation/:number1/:number2' do
  @number_1 = params[:number1].to_i
  @number_2 = params[:number2].to_i
  @operation = params[:operation]
  if @operation == "add"
    "#{@number_1 +@number_2}"
  elsif @operation == "subtract"
    "#{@number_1 - @number_2}"
  elsif @operation == "multiply"
    "#{@number_1 * @number_2}"
  elsif @operation == "divide"
    "#{@number_1/@number_2}"

end
end
end