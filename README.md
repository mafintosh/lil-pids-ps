# lil-pids-ps

Run ps with all active lil-pids services

```
npm install -g lil-pids-ps
```

## Usage

``` shell
# simply call lil-pids-ps with a path to the pids file
lil-pids-ps ./pids
```

Running the above will print out status of all running processes and their child processes using `ps`.

```
  PID  PPID     ELAPSED %MEM %CPU COMMAND
27498   766    05:07:10  0.0  0.0 /bin/sh -c taco-nginx -n hasselhoff node server.js
27499 27498    05:07:10  0.0  0.0 /bin/bash /usr/local/bin/taco-nginx -n hasselhoff node server.js
29867   766       15:48  0.0  0.0 /bin/sh -c dat dats/gifs --quiet
29868 29867       15:48  0.1  0.2 dat
29869   766       15:48  0.0  0.0 /bin/sh -c dat dats/youtube --quiet
29870 29869       15:48  0.1  0.3 dat
```

## License

MIT
