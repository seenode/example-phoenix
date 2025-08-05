defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def api(conn, _params) do
    # * Returns a JSON response for API requests
    json(conn, %{
      message: "Hello from Phoenix API!",
      status: "success",
      timestamp: DateTime.utc_now()
    })
  end
end
