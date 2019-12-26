# frozen_string_literal: true

control 'ec2' do
  title 'verify example instance'
  impact 0.7
  desc   'Ensures AWS resources created with terrafrom are relevant'

  instance_id = attribute('instance_id')

  describe aws_ec2_instance(instance_id) do
    its('instance_type') { should cmp(/nano/) }
    its('tags') { should include(key: 'destiny', value: 'DELETE ME') }
  end
end
