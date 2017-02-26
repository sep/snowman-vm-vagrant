# # encoding: utf-8

# Inspec test for recipe vcruntime-wrapper::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17') do
  it { should be_installed }
end

describe package("Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.17") do
  it { should be_installed }
end

describe package("Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219") do
  it { should be_installed }
end

describe package("Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219") do
  it { should be_installed }
end

describe package('Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.24215') do
  it { should be_installed }
end

describe package('Microsoft Visual C++ 2015 x64 Additional Runtime - 14.0.24215') do
  it { should be_installed }
end

