Rails.application.routes.draw do
  root to: { controller: "games", action: "home" }
  get "/rock", to: { controller: "games", action: "rock" }
  get "/paper", to: { controller: "games", action: "paper" }
  get "/scissors", to: { controller: "games", action: "scissors" }
end
