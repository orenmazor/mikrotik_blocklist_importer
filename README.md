# Mikrotik Blocklist Importer 

Occasionally I have the mad idea of scrapping pihole and just using the dns server in my mikrotik router.

This script will let you do this mad thing.

It comes as a Taskfile and a terraform project.

The taskfile has two tasks:

```
➜ task -a                
task: Available tasks for this project:
* sync_with_mikrotik:   Sync with mikrotik
* update_pihole_list:   Download the latest default pihole blocklist
```

`update_pihole_list` downloads the default pihole blocklist. This is good enough for most folks. It'll parse out the noise and generate a derivative file called `urls_to_block`. As of mid 2022, this file has roughly 130000 domains to block.

The next step is `sync_with_mikrotik`, which initializes and sets up a terraform plan for you. This will create a mikrotik dns record for each domain in the list.

I used terraform so that it is easy to revert these changes once I realize how bad of an idea this is going to be, while leaving any existing dns settings in place.

## License

```
        DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
                    Version 2, December 2004 

 Copyright (C) 2004 Sam Hocevar <sam@hocevar.net> 

 Everyone is permitted to copy and distribute verbatim or modified 
 copies of this license document, and changing it is allowed as long 
 as the name is changed. 

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 

  0. You just DO WHAT THE FUCK YOU WANT TO.
```
