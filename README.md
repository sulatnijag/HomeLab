# Homelab


**[Features](#features) • [Get Started](#get-started) • [Documentation](https://xdork.duckdns.com/homelab)**

This project utilizes [K3S](https://k3s.io/) running on Raspberry Pi.

> **What is a homelab?**
>
> Homelab is a laboratory at home where you can self-host, experiment with new technologies, practice for certifications, and so on.
> For more information about homelab in general, see the [Homelab introduction](https://www.reddit.com/r/homelab/wiki/introduction).

## Overview

Project status: **ALPHA**

This project is still in the experimental stage and will stay in experimental status, don't use this for anything critical.
Expect breaking changes that may require a complete redeployment.

### Hardware
- 3 x Raspberry Pi 4B 8GB
- UniFi Flex Mini switch:
  - Ports: 5
  - Speed: 1000Mbsp


### Features

- [x] CI/CD using Jenkins
- [x] Longhorn storage
- [x] Certificate Manager
- [x] Traefik



## Let's Start!


### The Jump Server - Gateway to Homelab
Before anything else, we need a computer to serve as a controller of our cluster. This can be another computer.

But to keep things repeatable and easier to maintain I'm gonna use a Docker image.

Build the Docker Image  
```
  docker build -t xdork .
```

Start the container  
```
  docker run -d --name xdork -v /Users/jag/Git/HomeLab/.kube:/root/.kube -v /Users/jag/Git/HomeLab/k3s:/k3s xdork
```

Attach shell to the container
```
  docker exec -it xdork bash
```





### Tech stack

<table>
    <tr>
        <th>Logo</th>
        <th>Name</th>
        <th>Description</th>
    </tr>
    <tr>
        <td><img width="32" src="https://avatars.githubusercontent.com/u/30269780"></td>
        <td><a href="https://www.jenkins.io/">Jenkins</a></td>
        <td>Jenkins for building and deploying applications to Kubernetes</td>
    </tr>
    <tr>
        <td><img width="32" src="https://github.com/jetstack/cert-manager/raw/master/logo/logo.png"></td>
        <td><a href="https://cert-manager.io">cert-manager</a></td>
        <td>Cloud native certificate management</td>
    </tr>
    <tr>
        <td><img width="32" src="https://www.docker.com/wp-content/uploads/2022/03/Moby-logo.png"></td>
        <td><a href="https://www.docker.com">Docker</a></td>
        <td>Platform for developing, shipping, and running applications. </td>
    </tr>
    <tr>
        <td><img width="32" src="https://avatars.githubusercontent.com/u/49319725"></td>
        <td><a href="https://k3s.io">K3s</a></td>
        <td>Lightweight distribution of Kubernetes</td>
    </tr>
    <tr>
        <td><img width="32" src="https://avatars.githubusercontent.com/u/13629408"></td>
        <td><a href="https://kubernetes.io">Kubernetes</a></td>
        <td>Container-orchestration system, the backbone of this project</td>
    </tr>
</table>

