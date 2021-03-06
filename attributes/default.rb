default['efs']['rsize'] = 1_048_576
default['efs']['wsize'] = 1_048_576
default['efs']['behavior'] = 'hard'
default['efs']['timeout'] = 600
default['efs']['retrans'] = 2
default['efs']['mounts'] = {}
default['efs']['remove_unspecified_mounts'] = false

case node['platform']
when 'ubuntu', 'debian'
  default['efs']['nfs-package'] = 'nfs-common'
when 'redhat', 'amazon', 'oracle', 'suse'
  default['efs']['nfs-package'] = 'nfs-utils'
end
