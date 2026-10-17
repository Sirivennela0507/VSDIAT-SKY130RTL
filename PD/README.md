# Physical Design Lab Work — VSDBabySoC

This folder contains my own physical design lab work on the **VSDBabySoC** design.

I used the OpenROAD flow with the Sky130HD technology and used OpenSTA for timing analysis.

## Physical Design Flow

The work was carried out through the following stages:

1. Synthesis
2. Floorplanning
3. Placement
4. Clock Tree Synthesis (CTS)
5. Routing
6. Post-route timing analysis using OpenSTA

---

## 1. Synthesis

I started by converting the RTL design into a synthesized gate-level design.

The synthesis database was generated successfully and used as the input for the physical design stages.

### My Synthesis Result

![Synthesis](Images/01_Synthesis.png)

---

## 2. Floorplanning

In this stage, I created the chip floorplan and defined the core area. The required macro blocks were also considered during floorplanning.

### My Floorplan Result

![Floorplan](Images/02_Floorplan.png)

---

## 3. Placement

After floorplanning, I performed standard-cell placement.

The cells were distributed inside the core area so that the design could proceed to clock-tree synthesis and routing.

### My Placement Result

![Placement](Images/03_Placement.png)

---

## 4. Clock Tree Synthesis

CTS was performed to build the clock distribution network.

The purpose of CTS is to distribute the clock to sequential cells while controlling clock delay and skew.

### My CTS Result

![CTS](Images/04_CTS.png)

---

## 5. Routing

After placement and CTS, I performed the routing stage.

Routing connects the cells and macros using the available metal layers and vias.

I also inspected the routed design using the OpenROAD GUI.

### My Routing Result

![Routing](Images/05_Routing.png)

### Detailed Routing View

![Detailed Routing](Images/08_Routing_Detail.png)

---

## 6. Post-route OpenSTA

After routing, I used OpenSTA commands to check timing.

Commands used included:

```text
report_wns
report_tns
report_checks -path_delay max
report_checks -path_delay min
```

The observed terminal result was:

```text
WNS max = 0.00
TNS max = 0.00
```

### Setup Timing

![OpenSTA Setup](Images/06_OpenSTA_Setup.png)

### Hold Timing

![OpenSTA Hold](Images/07_OpenSTA_Hold.png)

---

## What I Learned

Through this lab work, I learned the basic ASIC physical design flow from synthesis to post-route timing analysis.

I learned how to:

- Run synthesis using OpenROAD.
- Create and inspect a floorplan.
- Perform standard-cell placement.
- Understand the purpose of CTS.
- Perform global and detailed routing.
- Open physical design databases in the OpenROAD GUI.
- Use OpenSTA commands to check timing.
- Understand WNS, TNS, setup timing and hold timing.

## Conclusion

This lab gave me practical experience with the VSDBabySoC physical design flow using open-source EDA tools. The work was taken through synthesis, floorplanning, placement, CTS, routing and post-route timing analysis.

---

**Project:** VSDBabySoC Physical Design Lab Work  
**Technology:** Sky130HD  
**Tools:** OpenROAD, OpenSTA  
## author:**
B.SANGATHRAM
B.TECH III YEAR ECE
ANURAG UNIVERSITY
