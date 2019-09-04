defmodule RotRaven.Repo.Migrations.CreateVehiclePrimeMovers do
  use Ecto.Migration

  def change do
    create table(:vehicle_prime_movers) do
      add :model, :string, comment: "原動機の型式"
      add :engine_id, references(:vehicle_engines, on_delete: :nothing), comment: "原動機が有するエンジンのID"
      add :electric_motor_id, references(:vehicle_electoric_motors, on_delete: :nothing), comment: "原動機が有するモーターのID"

      timestamps()
    end

    create index(:vehicle_prime_movers, [:engine_id])
    create index(:vehicle_prime_movers, [:electric_motor_id])
  end
end
