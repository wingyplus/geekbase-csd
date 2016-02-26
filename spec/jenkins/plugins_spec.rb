require "spec_helper"

describe "Greenballs plugin" do
  describe file("/var/lib/jenkins/plugins/greenballs.jpi") do
    it { should be_file }
    it { should be_exist }
  end

  describe command("wget -qO - http://localhost:8080/pluginManager/api/xml?depth=1") do
    its(:stdout) { should match /<shortName>greenballs<\/shortName>/ }
  end
end

describe "Ansicolor plugin" do
  describe file("/var/lib/jenkins/plugins/ansicolor.jpi") do
    it { should be_file }
    it { should be_exist }
  end

  describe command("wget -qO - http://localhost:8080/pluginManager/api/xml?depth=1") do
    its(:stdout) { should match /<shortName>ansicolor<\/shortName>/ }
  end
end

describe "Robot plugin" do
  describe file("/var/lib/jenkins/plugins/robot.jpi") do
    it { should be_file }
    it { should be_exist }
  end

  describe command("wget -qO - http://localhost:8080/pluginManager/api/xml?depth=1") do
    its(:stdout) { should match /<shortName>robot<\/shortName>/ }
  end
end

describe "Xvfb plugin" do
  describe file("/var/lib/jenkins/plugins/xvfb.jpi") do
    it { should be_file }
    it { should be_exist }
  end

  describe command("wget -qO - http://localhost:8080/pluginManager/api/xml?depth=1") do
    its(:stdout) { should match /<shortName>xvfb<\/shortName>/ }
  end
end