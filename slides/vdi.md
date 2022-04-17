## A modern approach to VDI

<br />

<center>
<em>
Geoffrey Papaux, May 19, 2022
</em>
</center>

<br/>
Slides and code:
<br />
<a href="https://papaux.github.io/vdi-heiafr">
https://papaux.github.io/vdi-heiafr
</a>

---

## About me
<img src="avatar.png" width="100" style="margin: 0px">
<br />


- Master in Computer Science (here at HEIA-FR 🏫)
- 5 years of embedded system development (Linux/C++)
- 3 years of data processing (Kafka/Scala/Golang/...)
- using a VDI on a daily basis


<br />
  <center>
  <a href="https://github.com/papaux">
  https://github.com/papaux
  </a>
  </center>
  <center>
  <a href="https://linkedin.com/in/gpapaux">
  https://linkedin.com/in/gpapaux
  </a>
  </center>






---

## Agenda

* VDI: what are we talking about ?
* Motivations
* Demo

---

## TODO

Before starting:
- who is familiar with the concept of VDI ?
- who is using a form of VDI at his company ?

---

## VDI

TODO:
Vdi advantage: always running, recover session / can work when offline 

### (Virtual Desktop Infrastructure)

_Set of technologies providing access to remote computers_

<!-- .element: style="text-align: center" -->

- An old idea ("Citrix" does it for > 20 years)
- Recently revisited
  - thanks to technology improvements
  - due to an infamous event...

---

![Google Trends - Virtual Desktop](google-trends-virtual-desktop.png)

---
### Virtual Desktop Infrastructure

![Virtual Desktop Infrastructure](vdi-concept.png)

<!-- .element: style="text-align: center" -->

---
### Virtual Desktop Infrastructure

![Virtual Desktop Infrastructure](vdi-network.png)

<!-- .element: style="text-align: center" -->

---

## Following the trend

![Daas](daas-1-shadow.png)

<!-- .element: style="text-align: center" -->

---

## Meet DaaS

![Daas](daas-2-shadow.png)

<!-- .element: style="text-align: center" -->

Desktop as a Service

---

## Benefits

1. Access from anywhere
    - Perfect for WFH

2. Security
    - No confidential files/code on laptops
    - Isolated environments
    - Especially for developers (admin/sudo ?)

---

## Benefits

3. Easier IT Management
    - Easier to manage and patch

4. Happier developers
    - Access to a Linux environment
    - Performance boost from server hardware
    - Messed up your environment ? Simply rebuild!

---

## Disadvantages

<img src="latency.gif" height="400">

#### Latency is your enemy!

---

## Disadvantages

1. Network requirements
    - Latency and bandwidth (client & server !)

2. Single point of failure
    - Laptops become useless without acess to VDI


---

## Disadvantages

3. Requires dedicated staff
    - Self hosted: IT support and buy-in
    - Cloud: somebody still needs to setup and maintain

4. Harder to access to local hardware
    - USB, Serial, ...

---



## Options

1. Commercial provider
    - VMware, Citrix, ...

2. On-premise
    - OpenStack

3. Cloud
    - Your favorite provider

---

##

TODO
cloud options ?
VMware ?
Citrx ?


Persistent vs nonpersistent

Self hosted vs in the cloud

---


---

## Demo

Small diagram about what we are going to do

workflow overview

Create VM -> Setup environment -> install tools from cloud-init

Questions:
- who is familiar with OpenStack or has used it ?
- who is faimiliar with terraform and used it ?
