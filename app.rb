require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:rules)
end

# get("/rock")
#   erb(:rock)
# end

# get ("/paper")
#   erb(:paper)
# end

# get("/scissors")
#   erb(:scissors)
# end
