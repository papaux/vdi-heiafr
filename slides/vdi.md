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

* Definition and history
* Architecture
* Benefits and drawbacks
* Available solutions
* Demo

---

## VDI ?

![Poll](questions.png)

<!-- .element: style="text-align: center" -->

---

### VDI

## Virtual Desktop Infrastructure

_Set of technologies for hosting and accessing virtual remote computers._

<!-- .element: style="text-align: center" -->

---

## Overview

![VDI Intro](vdi-intro.png)
<!-- .element: class="r-stretch" style="text-align: center" -->

---

## History

- An old idea: **VDI alliance** created in 2006 by VMware ([link](https://news.vmware.com/releases/vdi))
  - 20+ companies including Citrix, HP, IBM, Sun
- Recently revisited thanks to...

![VDI Driving Factors](vdi-drivers.png)

<!-- .element: style="text-align: center" -->

---

## Google Trends "Virtual Desktop"

![Google Trends - Virtual Desktop](google-trends-virtual-desktop.png)

---
### VDI Architecture

![Virtual Desktop Infrastructure](vdi-network.png)

<!-- .element: style="text-align: center" -->

---

## Benefits

1. Access from anywhere and from any device (WFH Nirvana!)

2. Security and isolation

3. IT Management

4. Happier developers (if done right)

---

## Drawbacks

<img src="latency.gif" height="400">

#### Latency is your enemy!

---

## Drawbacks

1. Network requirements (client & server !)

2. Single point of failure (laptops are useless without VDI)

3. Dedicated and trained IT staff

4. Harder to access to local hardware (USB, Serial, ...)

---

## Cost ?

Commercial offerings advertise lower costs. Is it really true ?

&plus; No need for powerful laptops/workstations<br />
&plus; Optimize hardware usage<br />

&minus; Upfront server cost (or monthly cloud fees)<br />
&minus; IT staff and training<br />
&minus; Licensing & support<br />

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

<img src="recap-options.png">
<!-- .element: class="r-stretch" style="text-align: center" -->

=> A lot of options, commercial and Free/OpenSource !
<!-- .element: style="text-align: center" -->

---

## Demo

### Let's setup a "cloud" VDI!


<img src="builder.png">

<!-- .element: class="r-stretch" style="text-align: center" -->
---

## Technologies

<img src="demo-components.png">
<!-- .element: style="text-align: center; " -->

---

## Terraform

<img src="terraform.png">
<!-- .element: style="text-align: center;" -->

---

## Demo

### Let's run it!

---

## What happened ?

<img src="demo-flow.png">

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
