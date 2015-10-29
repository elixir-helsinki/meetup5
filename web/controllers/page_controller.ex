defmodule Crux.PageController do
  use Crux.Web, :controller

  def index(conn, _params) do
    redirect conn, to: post_path(conn, :index)
  end
end
