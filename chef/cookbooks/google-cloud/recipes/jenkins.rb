gauth_credential 'mycred' do
action :serviceaccount
path '/home/malfaror/credentials.json'
scopes [
'https://www.googleapis.com/auth/compute'
]
end

gcompute_disk 'jenkins' do
action :create
source_image 'projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts'
zone 'us-east1-b'
project 'smiling-breaker-228800'
credential 'mycred'
end

gcompute_instance 'jenkins' do
action :create
machine_type 'n1-standard-1'
disks [ { boot: true, auto_delete: true, source: 'jenkins' } ]
network_interfaces [ { access_configs: [ { name: 'External NAT', type: 'ONE_TO_ONE_NAT' } ] } ]
zone 'us-east1-b'
project 'smiling-breaker-228800'
credential 'mycred'
end
