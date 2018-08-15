require_relative "../fighter"

describe "creates a new fighter" do
  it "creates fighter" do
    expect{Fighter.new("New Fighter", "New Type")}.not_to raise_error
  end
end
