# frozen_string_literal: true

control 'sg' do
  title 'verify example instance security group'
  impact 0.7
  desc   'Ensures AWS resources created with terrafrom are relevant'

  describe aws_security_group(group_name: 'example_ssh') do
    it { should allow_in_only(port: 22, ipv4_range: '0.0.0.0/0') }
  end
end
