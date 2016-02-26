require "spec_helper"

describe package("jenkins") do
  it { should be_installed }
end


describe service("jenkins") do
  it { should be_enabled }
  it { should be_running }
end

describe port(8080) do
  it { should be_listening }
end

describe package("python-pip") do
  it { should be_installed }
end

describe package("google-chrome-stable") do
  it { should be_installed }
end
