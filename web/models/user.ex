defmodule PhoenixTrello.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :encrypted_password, :string

    timestamps
  end

  @required_fields ~w(first_name last_name email)
  @optional_fields ~w(encrypted_password)

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
