defmodule KurikulaWeb.PageController do
  use KurikulaWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
