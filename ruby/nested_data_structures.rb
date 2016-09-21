# Pre-initialized hash of clients
$clients = 
{
	"alex" => 
	{
		"age" => 100,
		"children" => 
		{
			"alex jr" =>
			{
				"age" => 22
			},
			"asdf" =>
			{
				"age" => 25
			}
		},
		"decor" => "modern"
	},

	"bri" => 
	{
		"age" => 22,
		"children" => 
		{

		},
		"decor" => "gothic"
	}
}

# Method for creating new clients
def create_client(name, age="", children={}, decor="")
	$clients["#{name}"] = {"age" => "", "children" => {}, "decor" => ""}
end

# store $clients["chris"] hash in c, then access 
c = create_client("chris") 
c.store("age", 28)
c['children'] = {"chris jr" => {"age" => 4}}
c['children']['chris jr']['age'] = 3
c['decor'] = "french"

# Output
puts "\nHere are your clients:\n\n"
# For each key in hash clients, do the following:
i = 0
for i in $clients.keys
	puts " #{i.capitalize} ".center(30, "-") + "\n\n"
	$clients[i].each do |key, value|
		if key == "children"
			print "#{key.capitalize}:".ljust(15)
			puts "#{value.length}"
			print "Ages:".ljust(15)
			if value.length > 0
		    value.each do |name, age|
				  age.each do |age, num|
					  print "#{num}  " 
				  end
				end
			else
				print "n/a"
			end
			puts ""
		else 
			puts "#{key.capitalize}:".ljust(15) + "#{value}"
		end
	end
  puts ""
end
