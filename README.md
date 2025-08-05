# Deploy Phoenix on Seenode in seconds

This is a repo for deploying a minimal but production-ready Elixir Phoenix application for deployment on [Seenode](https://seenode.com).

This example demonstrates how to deploy a simple Phoenix app with a working API endpoint and modern web interface.

### Deploy in minutes
View our [guide on deploying Phoenix apps](https://seenode.com/docs/frameworks/elixir/phoenix/) on [seenode](https://seenode.com) in seconds.

## How to Deploy on Seenode

1. **Connect Your Repository**: Go to the [Seenode dashboard](https://cloud.seenode.com), select **New Web Service**, and choose this Git repository.
2. **Confirm Settings**: Seenode will detect the Elixir environment and suggest the correct commands.
   * **Build Command**: 
     ```
     mix local.hex --force && mix local.rebar --force
     mix deps.get --only prod
     MIX_ENV=prod mix compile
     MIX_ENV=prod mix assets.build
     MIX_ENV=prod mix assets.deploy
     ```
   * **Start Command**: `MIX_ENV=prod mix phx.server`
3. **Deploy**: Click **Create Web Service**.

That's it! Your Phoenix app will be deployed and available at a public URL.

### Key Features on Seenode

* **Production-Ready**: Your Phoenix app runs in a managed Elixir environment with optimized performance and reliability.
* **Port Binding**: This example is configured to listen on port 80 by default in production. The app will automatically bind to port 80 unless overridden by the PORT environment variable.
* **API Endpoint**: Includes a working `/api` endpoint that returns JSON responses for easy testing and integration.
* **Seamless Scaling**: Scale your service horizontally or vertically with a few clicks from the Seenode dashboard as your traffic grows.
* **Live Reload**: Development-friendly with automatic code reloading and asset compilation.

### Local Development

To start your Phoenix server locally:

* Run `mix setup` to install and setup dependencies
* Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`
* Visit [`localhost:4000`](http://localhost:4000) from your browser
* Test the API at [`localhost:4000/api`](http://localhost:4000/api)

## Learn more

* Official website: https://www.phoenixframework.org/
* Guides: https://hexdocs.pm/phoenix/overview.html
* Docs: https://hexdocs.pm/phoenix
* Forum: https://elixirforum.com/c/phoenix-forum
* Source: https://github.com/phoenixframework/phoenix
