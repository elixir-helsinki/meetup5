defmodule Crux.Router do
  use Crux.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Crux do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    get "/tag/:tag", PostController, :tag

    resources "/posts", PostController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Crux do
  #   pipe_through :api
  # end
end
