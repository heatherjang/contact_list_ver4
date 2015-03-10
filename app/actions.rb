# Homepage (Root path)
get '/' do
  erb :index
end

get '/contacts' do
  erb :'contacts/index'
end