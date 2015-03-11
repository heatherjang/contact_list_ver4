# Homepage (Root path)
get '/' do
  erb :index
end

get '/contacts' do
  @contacts = Contact.all.to_json
  # erb :'contacts/index'
end





get '/contacts/new' do
  erb :'contacts/new'
end

post '/contacts' do
  contact = Contact.create(
    email: params[:email],
    firstname: params[:firstname],
    lastname: params[:lastname],
  )
  if @contact.save
    redirect '/contacts'
  else
    erb :'contacts/new'
  end
end