defmodule SamplePhoenixPlugCors.Router do
  use SamplePhoenixPlugCors.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SamplePhoenixPlugCors do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
   scope "/api", SamplePhoenixPlugCors do
     pipe_through :api

     get "/user", PageController, :get_user
     post "/user", PageController, :post_user
     put "/user", PageController, :put_user
   end
end
