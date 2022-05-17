## A modern approach to VDI

<br />

<center>
<em>
Geoffrey Papaux, May 19, 2022
</em>
</center>

<br/>
22nd Fribourg Linux Seminar
<br />

---

## About me
<img src="avatar.png" width="100" style="margin: 0px">
<br />


- Master in Computer Science (here at HEIA-FR 🏫)
- 5 years of embedded system development (Linux/C++)
- 3 years of data processing (Kafka/Scala/Golang/...)
- Using a VDI on a daily basis


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

* VDI: What are we talking about ?
* Motivations and drawbacks
* Some VDI solutions
* Demo

---

## VDI ?

![Poll](questions.png)

<!-- .element: style="text-align: center" -->

---

## VDI

### Virtual Desktop Infrastructure

_Set of technologies for hosting and accessing virtual remote computers._

<!-- .element: style="text-align: center" -->

---

### VDI

- An old idea: **VDI alliance** created in 2006 by VMware ([link](https://news.vmware.com/releases/vdi))
  - 20+ companies including Citrix, HP, IBM, Sun
- Recently revisited thanks to...

![VDI Driving Factors](vdi-drivers.png)

<!-- .element: style="text-align: center" -->

---

## Google Trends "Virtual Desktop"

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

## Benefits

1. Access from anywhere
    - Perfect for WFH
    - Device flexibility

2. Security
    - No confidential files on laptops
    - Network isolation
    - Controlled environments for admin/sudo

---

## Benefits

3. IT Management
    - Easier to manage and patch

4. Happier developers
    - Access to a Linux environment
    - Server hardware => performance boost
    - Messed up your environment ? Simply rebuild!
    - Always running

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

3. Dedicated staff
    - IT support and knowledge

4. Harder to access to local hardware
    - USB, Serial, ...

---

## Cost

Commercial offerings advertise lower costs. Is it really true ?

&plus; Lower end client devices<br />
&plus; Optimize hardware usage<br />

&minus; Upfront server cost (or monthly cloud fees)<br />
&minus; IT staff and training<br />
&minus; Licensing<br />

---

## What's new ?

---

## Following the trend

![Daas](daas-1-shadow.png)
<!-- .element: class="r-stretch" style="text-align: center" -->

---

## Meet DaaS

![Daas](daas-2-shadow.png)
<!-- .element: class="r-stretch"  style="text-align: center" -->

---


## Windows 365

![Windows 365](windows365_small.png)
<!-- .element: class="r-stretch" style="text-align: center" -->

4 vCPU, 16GB RAM, 256GB SSD => $54 / month
<!-- .element: style="text-align: center" -->

---

## Shadow

![Shadow](shadow2.jpg)
<!-- .element: class="r-stretch" style="text-align: center" -->

8 vCPU, 12GB RAM, 256GB SSD, **GTX 1080** => CHF 34.99 / month
<!-- .element: style="text-align: center" -->

---

## Recap: Options for VDI

![Recap](recap-options.png)
<!-- .element: style="text-align: center" -->

=> A lot of options, commercial and Free/OpenSource !
<!-- .element: style="text-align: center" -->

---

## Demo

### Let's setup a VDI!


<img src="builder.png">

<!-- .element: style="text-align: center; max-height: 300px" -->
---

## Demo

<img src="demo-flow.png">

---

## Demo

TODO: remove ??

<img src="demo-flow-all.png">
---

## Demo cont'd

To include:
- we are using infomaniak cloud
- description of the setup with text ?

Questions:
- who is familiar with OpenStack or has used it ?
- who is faimiliar with terraform and used it ?

---

<br/>
Slides and code:
<br />
<a href="https://papaux.github.io/vdi-heiafr">
https://papaux.github.io/vdi-heiafr
</a>

---

<br/>
Image and animation sources:
<br/>
<a href="https://www.anyrgb.com">https://www.anyrgb.com</a>
<br/>
<a href="https://tenor.com">https://tenor.com</a>
