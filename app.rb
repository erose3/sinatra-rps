require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:rules)
end

get("/rock") do
  @user = "rock"
  @cpu = ["rock","paper","scissors"].sample
  if @user == @cpu
    @outcome = "tied"
  elsif @cpu == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:user_play)
end

get ("/paper") do
  @user = "paper"
  @cpu = ["rock","paper","scissors"].sample
  if @user == @cpu
    @outcome = "tied"
  elsif @cpu == "scissors"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:user_play)
end

get("/scissors") do
  @user = "scissors"
  @cpu = ["rock","paper","scissors"].sample
  if @user == @cpu
    @outcome = "tied"
  elsif @cpu == "rock"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:user_play)
end
