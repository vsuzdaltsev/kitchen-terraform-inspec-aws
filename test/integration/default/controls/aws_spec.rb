# frozen_string_literal: true

title 'sample section'

control 'aws' do
  instances = aws_ec2_instances.raw_data.map do |h|
    h[:instance_id] unless h[:vpc_id].nil?
  end.compact

  instances.each do |instance|
    describe aws_ec2_instance(instance) do
      its('instance_type') { should cmp(/micro|nano|small/) }
    end
  end
end
