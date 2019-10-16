defmodule RotRaven.Repo.Migrations.CreateVehicleMakers do
  use Ecto.Migration

  def change do
    create table(:vehicle_makers) do
      add :name, :string, comment: "一般的なメーカー名称(Honda,Suzukiなど)"

      timestamps()
    end

  end
end
