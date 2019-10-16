defmodule RotRaven.Vehicle.PrimeMover.ElectricMotor do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_electoric_motors" do
    field :max_kw, :decimal
    field :max_kw_max_range, :integer
    field :max_kw_min_range, :integer
    field :max_nm, :decimal
    field :max_nm_max_range, :integer
    field :max_nm_min_range, :integer
    field :model, :string

    timestamps()
  end

  @doc false
  def changeset(electric_motor, attrs) do
    electric_motor
    |> cast(attrs, [:model, :max_kw, :max_kw_min_range, :max_kw_max_range, :max_nm, :max_nm_min_range, :max_nm_max_range])
    |> validate_required([:model, :max_kw, :max_kw_min_range, :max_kw_max_range, :max_nm, :max_nm_min_range, :max_nm_max_range])
  end
end
