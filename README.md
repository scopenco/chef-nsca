# NSCA
Chef cookbook to install and configure NSCA server/client.

## Requirements
### Chef
Chef version 0.10.10+ and Ohai 0.6.12+ are required.

### Platforms
* Debian 6.X, 7.X
* Ubuntu 10.04, 12.04, 13.04
* Red Hat Enterprise Linux (CentOS/Amazon/Scientific/Oracle) 5.X, 6.X
* Fedora

**Notes**: This cookbook has been tested on the listed platforms. It may work on other platforms with or without modification.

### Cookbooks
* yum-epel

## Recipes

### server
Configure NSCA server.

### client
Configure NSCA client.

#### Attributes
### platform specific attributes (auto set based on platform)
* `node['nsca']['conf_dir']` - location of the nsca configuration
* `node['nsca']['user']` - NSCA user
* `node['nsca']['group']` - NSCA group
* `node['nsca']['mode']` - chmod configuration file
* `node['nsca']['command_file']` - path to nagios/icinga command pipe
* `node['nsca']['alternate_dump_file']` - path to alternative dump file when pipe is closed

# config file options
* `node['nsca']['pid_file']` - path to pid file
* `node['nsca']['server_address']` - address for NSCA binding
* `node['nsca']['nsca_chroot']` - path to NSCA chroot
* `node['nsca']['server_port']` - NSCA port binding
* `node['nsca']['debug']` - This option determines whether or not debugging messages are logged to the syslog facility.
* `node['nsca']['aggregate_writes']` - This option determines whether or not the nsca daemon will aggregate writes to the external command file for client connections that contain multiple check results.
* `node['nsca']['append_to_file']` - This option determines whether or not the nsca daemon will open the external command file for writing or appending.
* `node['nsca']['max_packet_age']` - This option is used by the nsca daemon to determine when client data is too old to be valid.
* `node['nsca']['password']` - This is the password that should be used to descrypt the incoming packets.
* `node['nsca']['decryption_method']` - This option determines the method by which the nsca daemon will decrypt the packets it receives from the clients.


## Contributing
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License & Authors
- Author:: Andrei Skopenko <andrey@skopenko.net>

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
