defmodule EctoTablestore.TestSchema.Order do
  use EctoTablestore.Schema

  tablestore_schema "ecto_ots_test_order" do
    field(:id, :binary_id, primary_key: true, autogenerate: false)
    field(:internal_id, :id, primary_key: true, autogenerate: true)
    field(:name, :string)
    field(:desc)
    field(:num, :integer)
    field(:success?, :boolean)
    field(:price, :float)
  end
end

defmodule EctoTablestore.TestSchema.User do
  use EctoTablestore.Schema

  tablestore_schema "ecto_ots_test_user" do
    field(:id, :id, primary_key: true)
    field(:name, :string)
    field(:level, :integer)

    field(:profile, :map)
    field(:tags, {:array, :string})

    timestamps()
  end
end

defmodule EctoTablestore.TestSchema.Student do
  use EctoTablestore.Schema

  tablestore_schema "ecto_ots_test_student" do
    field(:partition_key, :binary_id, primary_key: true)
    field(:class, :string)
    field(:name, :string)
    field(:age, :integer)
    field(:score, :float)
    field(:is_actived, :boolean)
    field(:comment, :string)
    field(:content, :string)
  end

end

defmodule EctoTablestore.TestSchema.Page do
  use EctoTablestore.Schema

  tablestore_schema "ecto_ots_test_page" do
    field(:pid, :id, primary_key: true, autogenerate: true)
    field(:name, :string, primary_key: true)
    field(:content, :string)
    field(:age, :integer)
  end

end
