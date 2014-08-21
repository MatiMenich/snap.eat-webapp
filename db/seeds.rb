# Devise users seeds
User.create!([
	{:email => 'matimenich@gmail.com', :password => '.123.asd', :password_confirmation => '.123.asd'},
	{:email => 'facarmach@gmail.com', :password => 'condorito', :password_confirmation => 'condorito'},
	{:email => 'icarmach@gmail.com', :password => 'admin123', :password_confirmation => 'admin123'}
])

Table.create([
	{:number => 1, place: "Golden West"},
	{:number => 2, place: "Golden West"},
	{:number => 3, place: "Golden West"}
])

Product.create([
	{:name => "Alto del Carmen 35º", price: 2500, category: 'Pisco' },
	{:name => "Alto del Carmen 40º Añejo", price: 3000, category: 'Pisco' },
	{:name => "Mistral 35º", price: 2500, category: 'Pisco' },
	{:name => "Mistral 40º", price: 3000, category: 'Pisco' },
	{:name => "Mojito Cubano (menta)", price: 2800, category: 'Ron' },
	{:name => "Mojito Albahaca", price: 2800, category: 'Ron' },
	{:name => "Daiquiri", price: 2800, category: 'Ron' },
	{:name => "Pampero", price: 2800, category: 'Ron' },
	{:name => "Pampero Selección", price: 3500, category: 'Ron' },
	{:name => "Piña Colada", price: 2800, category: 'Ron' },
	{:name => "Johnnie Walker Red Label", price: 4800, category: 'Whisky/Burbon' },
	{:name => "Johnnie Walker Black Label", price: 6500, category: 'Whisky/Burbon' },
	{:name => "Johnnie Walker Gold Label", price: 8500, category: 'Whisky/Burbon' },
	{:name => "Chivas Reagal (12 años)", price: 6500, category: 'Whisky/Burbon' },
	{:name => "Jack Daniel's (Bourbon)", price: 5500, category: 'Whisky/Burbon' }

])