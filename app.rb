require ("sinatra")
require ('sinatra/reloader')
require('./lib/phone.rb')
require('./lib/contact.rb')
also_reload('lib/**/*.rb')


get '/' do
  @contacts = Contact.all
  erb :index
end

get '/newcontact' do
  erb :add_contact
end

post '/newcontact' do
  @first_name = params.fetch('first_name')
  @last_name = params.fetch('last_name')
  @birth_month = params.fetch('birth_month')

  @contact = Contact.new({:first_name => @first_name, :last_name => @last_name, :birth_month => @birth_month})
  @contact.save
  erb :results
end


get '/contact/:id' do

  @contact = Contact.find(params.fetch("id").to_i)
  erb :contact
end

get '/newphone/:id' do
  @id = params.fetch('id')
  erb :add_phone
end

post '/newphone/:id' do
  area_code = params.fetch('area_code')
  number = params.fetch('number')
  type = params.fetch('type')
  @contact = Contact.find(params.fetch('id').to_i)
  @phone = Phone.new({:area_code => area_code, :number => number, :type => type})
  @contact.add_phone(@phone)
  erb :results
end
