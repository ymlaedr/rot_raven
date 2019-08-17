defmodule RotRaven.DynamoDB.Repo do
  use Ecto.Repo,
    otp_app: :rot_raven,
    adapter: Ecto.Adapters.DynamoDB
end
