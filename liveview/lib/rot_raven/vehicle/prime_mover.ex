defmodule RotRaven.Vehicle.PrimeMover do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_prime_movers" do
    field :model, :string
    field :engine_id, :id
    field :electric_motor_id, :id

    timestamps()
  end

  @doc false
  def changeset(prime_mover, attrs) do
    prime_mover
    |> cast(attrs, [:model])
    |> validate_required([:model])
  end
end
