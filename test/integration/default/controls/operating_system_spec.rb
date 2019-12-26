title 'Check vm from inside using ssh'

control 'operating_system' do
  describe command('uname -a') do
    its('stdout') { should cmp (/Ubuntu/) }
  end
end
