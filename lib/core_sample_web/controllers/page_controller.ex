defmodule CoreSampleWeb.PageController do
  use CoreSampleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
