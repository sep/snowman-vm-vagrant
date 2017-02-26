


windows_package node['vcruntime']['vc10']['x86'][node['vcruntime']['vc10']['version']]['name'] do
    checksum node['vcruntime']['vc10']['x86'][node['vcruntime']['vc10']['version']]['sha256sum']
    source node['vcruntime']['vc10']['x86'][node['vcruntime']['vc10']['version']]['url']
    installer_type :custom
    options '/q'
end