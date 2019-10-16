defmodule RotRaven.Vehicle.Transmission do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_transmissions" do
    field :type_id, :id
    field :clutch_type_id, :id

    timestamps()
  end

  @doc false
  def changeset(transmission, attrs) do
    transmission
    |> cast(attrs, [])
    |> validate_required([])
  end
end
