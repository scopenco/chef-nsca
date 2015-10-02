require_relative 'spec_helper'

describe "nsca" do
  it "is listening on port 5667" do
    expect(port(5667)).to be_listening
  end

  it "is a running service of nsca" do
    expect(service("nsca")).to be_running
    expect(service("nsca")).to be_enabled
  end
end
