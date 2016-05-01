defmodule Natter.ChatController do
  use Natter.Web, :controller

  def index(conn, _params) do
    render conn, "lobby.html"
  end
end
