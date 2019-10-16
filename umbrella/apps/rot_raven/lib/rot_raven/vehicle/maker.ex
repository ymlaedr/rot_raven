defmodule RotRaven.Vehicle.Maker do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_makers" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(maker, attrs) do
    maker
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
