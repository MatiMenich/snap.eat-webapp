# Devise users seeds
User.create!([
	{:email => 'matimenich@gmail.com', :password => '.123.asd', :password_confirmation => '.123.asd'},
	{:email => 'facarmach@gmail.com', :password => 'condorito', :password_confirmation => 'condorito'},
	{:email => 'icarmach@gmail.com', :password => 'admin123', :password_confirmation => 'admin123'}
])

Table.create([
	{:number => 1, place: "Gino's"},
	{:number => 2, place: "Gino's"},
	{:number => 3, place: "Gino's"}
])

Product.create([
	{:name => "Piscola Alto", price: 3000},
	{:name => "Piscola Mistral", price: 3000},
	{:name => "Piscola Capel", price: 2000}
])