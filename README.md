

To create images and run docker containers with docker-compose

```
exec.bat
```

To inspect save machine's IP
```
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <slave_machines_name>
```

To start jmeter script
```
docker exec -it master /bin/bash ./bin/jmeter -n -t scripts/test.jmx  -R <slave_machine_IP>,<slave_machine_IP>
```

Open Grafana dashboard and import 1152 dashboard ID

```
localhost:3000
```
