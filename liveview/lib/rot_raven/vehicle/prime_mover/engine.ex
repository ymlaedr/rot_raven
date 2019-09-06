defmodule RotRaven.Vehicle.PrimeMover.Engine do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_engines" do
    field :cylinder, :integer
    field :displacement, :integer
    field :max_kw, :decimal
    field :max_kw_max_range, :integer
    field :max_kw_min_range, :integer
    field :max_nm, :decimal
    field :max_nm_max_range, :integer
    field :max_nm_min_range, :integer
    field :model, :string
    field :valve_mechanism, :string

    timestamps()
  end

  @doc false
  def changeset(engine, attrs) do
    engine
    |> cast(attrs, [:model, :displacement, :cylinder, :valve_mechanism, :max_kw, :max_kw_min_range, :max_kw_max_range, :max_nm, :max_nm_min_range, :max_nm_max_range])
    |> validate_required([:model, :displacement, :cylinder, :valve_mechanism, :max_kw, :max_kw_min_range, :max_kw_max_range, :max_nm, :max_nm_min_range, :max_nm_max_range])
  end
end
