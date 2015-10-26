defmodule Crux.PageController do
  use Crux.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
