Rails.application.routes.draw do
  get("/rock", { :controller => "game", :action => "rock" })

  get("/paper", { :controller => "game", :action => "paper" })

  get("/scissors", { :controller => "game", :action => "scissors"})

  get("/home", { :controller => "game", :action => "home" })
  get("/", { :controller => "game", :action => "home" })
end
