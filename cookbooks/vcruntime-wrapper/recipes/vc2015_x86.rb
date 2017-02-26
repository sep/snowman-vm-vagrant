package node['vcruntime']['vc14']['x86'][node['vcruntime']['vc14']['version']]['name'] do
  checksum node['vcruntime']['vc14']['x86'][node['vcruntime']['vc14']['version']]['sha256sum']
  source node['vcruntime']['vc14']['x86'][node['vcruntime']['vc14']['version']]['url']
  installer_type :custom
  options '/q'
end