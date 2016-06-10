# ubuntu14webserver

## Chef Cookbook

Create LAMP stack for ubuntu-14

**Attributes**

````
attributes: {
    ubuntu14webserver: {
        database: {
            bind_address: "127.0.0.1",
            max_allowed_packet: "16M",
            root_password: "",
            remote_root: false
        },
        memcache: {
            install_memcache: false
        }
    }
}
````

