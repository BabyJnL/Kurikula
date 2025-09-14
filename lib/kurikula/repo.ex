defmodule Kurikula.Repo do
  use Ecto.Repo,
    otp_app: :kurikula,
    adapter: Ecto.Adapters.MyXQL
end
