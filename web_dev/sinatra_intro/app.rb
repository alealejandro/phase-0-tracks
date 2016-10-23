# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

###### Release 0: Add Routes ######

# Couldn't retrieve routes correctly because Gem Conflict Error
# Unable to activate sinatra-1.4.7, because rack-2.0.1 conflicts with rack (~> 1.5)
# Couldn't check work as a result

# I've been getting a lot of error messages, I think a big cause is RVM
# Will ask once on campus

# http://stackoverflow.com/questions/38712052/unable-to-activate-sinatra-1-4-7-because-rack-2-0-1-conflicts-with-rack-1-5#38760385
# https://duckduckgo.com/?q=Gem%3A%3AConflictError%3A+Unable+to+activate+sinatra-1.4.7%2C+because+rack-2.0.1+conflicts+with+rack+(~%3E+1.5)&atb=v33-2__&ia=qa
# http://stackoverflow.com/questions/15875941/creating-a-web-app-in-ruby-without-a-framework

get '/contact' do
  "633 Folsom St"
end

get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
end

get '/:num_1/plus/:num_2' do
  num1 = params[:num_1].to_s
  num2 = params[:num_2].to_s
  sum = num1 + num2
  sum.to_s
end

# Optional Bonus...
