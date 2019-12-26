# Aws insrastructure testing example

##### PREREQUISITES. The following components should be installed to perform test suite:
1. ruby ('ruby -v' to check)
2. bundler ('gem install bundler' to install)
3. terraform (use appropriate package manager to install)
4. aws-cli (use appropriate package manager to install)

##### 1. Clone repo:
```
$ git clone git@github.com:vsuzdaltsev/kitchen-terraform-inspec-aws.git
$ cd kitchen-terraform-inspec-aws
```
##### 2. Install mandatory libraries:
```
$ bundle install
```
##### 3. Set necessary environment variables:
```
$ source aws_authenticate.sh
```
##### 4. Create key pair for accessing ec2 instance:
```
$ bash create_ec2_key.sh
```
##### 5. Run tests:
```
$ kitchen test
```
###### NB: The infrastructure defined within terrafrom files will be created, validated using inspec controls and then destroyed