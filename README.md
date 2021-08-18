# Introduction to [Docker](https://www.docker.com/)
## What is Docker?
![](images/Containers.png)
- Containerisation software to run programs natively on an operating system whilst still keeping them separate
- Developed by [Docker, Inc.](http://www.docker.com/company) with an open source version called [moby](https://mobyproject.org/)
- Enables users to separate your applications from infrastructure to speed up software delivery

## Why should we use docker vs VMs
![](images/BinsLibs.png)
- Since Virtual Machines require running a guest operating system on your host operating system, they can be considerably heavier on your computer to run
- This is especially true on low power hardware such as a laptop
- Docker by comparison uses the Docker Engine to go between your programs and your operating system
- The Docker engine reduces overheads allowing for the programs to run at near native speed

## What are the benefits
- Faster than running through a VM
- Containers are separate but can talk to each other easily
    - Can be useful for app ➡️ db situations
- The idea is to split your application into a set of smaller, inter-connected services that are:
    - Highly maintainable and testable
    - Loosely coupled
    - Organised around business capabilities
    - Owned by small teams

## Who is using docker
Some companies who are using Docker include:
- [Adobe](https://hub.docker.com/u/adobe)
- [Microsoft](https://hub.docker.com/u/microsoft)
- [Netflix](https://netflixtechblog.com/the-evolution-of-container-usage-at-netflix-3abfc096781b?source=social.tw )
- Twitter

## What is Micro-services architecture
![](images/microservices.png)
- The architecture allows for multiple programs to run on one operating system
- A microservices architecture consists of a collection of small, autonomous services.
- Each service is self-contained and should implement a single business capability within a bounded context, which can be managed by a small development team.
- Services can be deployed independently. A team can update an existing service without rebuilding and redeploying the entire application.

## Micro-services architecture vs Monolith and use cases 
- Agility, since microservices are deployed independently, it's easier to manage bug fixes and feature releases.
- Small, focused teams. A microservice should be small enough that a single feature team can build, test, and deploy it. Large teams tend be less productive, because communication is slower.
- Small code base. Code dependencies in a monolithic application tend to grow entangled over time. Adding a new feature necessitates touching code in several places. A microservices design reduces dependencies by not sharing code or data storage, making it easier to add new features.

## Is Micro-services architecture always useful?
- Sometimes monolith architectures allow for easier integration into environments since it's just one program running at any one time
- Monolith also provides maximum compatibility since as long as you can run the os, if a program is compatible it should just run

## The reader should note
Sometimes Docker doesn't run on Windows, so use: `alias docker="winpty docker"` to help with the association