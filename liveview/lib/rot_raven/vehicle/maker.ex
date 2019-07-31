defmodule RotRaven.Vehicle.Maker do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_makers" do

    timestamps()
  end

  @doc false
  def changeset(maker, attrs) do
    maker
    |> cast(attrs, [])
    |> validate_required([])
  end
end
