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

describe package("xvfb") do
  it { should be_installed }
end

describe file("/usr/bin/chromedriver") do
  it { should be_exist }
  it { should be_file }
  it { should be_executable.by "owner" }
  it { should be_executable.by "others" }
  it { should be_executable.by "group" }
end