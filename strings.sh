#!/bin/bash

#### File: string.sh
#### Version: 1.5a
#### Description: Strings used throughout during installation and setup
#### Author: Dave (/u/topiaryx) - topiaryx@gmail.com - 28 August 2017 - Utah

# Phase completion strings
pre_complete() {
  echo -e "Pre-PHASE 1: COMPLETE"
}

p1_complete() {
  echo -e "PHASE 1: COMPLETE!"
  echo
}

p2_complete() {
  echo -e "PHASE 2: COMPLETE!"
}

p3_complete() {
  echo -e "PHASE 3: COMPLETE!"
}

p4_complete() {
  echo -e "PHASE 4: COMPLETE!"
}

p1-p2_complete() {
  p1_complete
  p2_complete
  echo " "
}

p1-p3_complete() {
  p1_complete
  p2_complete
  p3_complete
  echo " "
}

p-all_complete() {
  p1_complete
  p2_complete
  p3_complete
  p4_complete
  echo " "
}

#### Pre-Phase 1 strings
pre1a() {
  echo -e "Pre-PHASE 1a: Updating system"
}
pre1a_c() {
  echo -e "Pre-PHASE 1a: Updating system ------------------------------ COMPLETE"
}

pre1b() {
  echo -e "Pre-PHASE 1b: Installing prerequisite packages"
}
pre1b_c() {
  echo -e "Pre-PHASE 1b: Installing prerequisite packages ------------- COMPLETE"
}

#### Phase 1 (docker) strings
p1a() {
  echo -e "PHASE 1a: Removing old Docker installations"
}
p1a_c() {
  echo -e "PHASE 1a: Removing old Docker installations ---------------- COMPLETE"
}

p1b() {
  echo -e "PHASE 1b: Adding Docker repo"
}
p1b_c() {
  echo -e "PHASE 1b: Adding Docker repo ------------------------------- COMPLETE"
}

p1c() {
  echo -e "PHASE 1c: Installing Docker"
}
p1c_c() {
  echo -e "PHASE 1c: Installing Docker -------------------------------- COMPLETE"
}

p1d() {
  echo -e "PHASE 1d: Enabling Docker"
}
p1d_c() {
  echo -e "PHASE 1d: Enabling Docker ---------------------------------- COMPLETE"
}

p1e() {
  echo -e "PHASE 1e: Verifying Docker"
}
p1e_c() {
  echo -e "PHASE 1e: Verifying Docker --------------------------------- COMPLETE"
}

p1a-b() {
  p1a
  p1b
}

p1a-c() {
  p1a
  p1b
  p1c
}

p1a-d() {
  p1a
  p1b
  p1c
  p1d
}

p1a-e() {
  p1a
  p1b
  p1c
  p1d
  p1e
}

p1a-b_c() {
  p1a_c
  p1b_c
}

p1a-c_c() {
  p1a_c
  p1b_c
  p1c_c
}

p1a-d_c() {
  p1a_c
  p1b_c
  p1c_c
  p1d_c
}

p1a-e_c() {
  p1a_c
  p1b_c
  p1c_c
  p1d_c
  p1e_c
}

#### Phase 2 (grafana) strings
p2a() {
  echo -e "PHASE 2a: Creating persistent storage for Grafana"
}
p2a_c() {
  echo -e "PHASE 2a: Creating persistent storage for Grafana ---------- COMPLETE"
}

p2b() {
  echo -e "PHASE 2b: Creating Docker container for Grafana"
}
p2b_c() {
  echo -e "PHASE 2b: Creating Docker container for Grafana ------------ COMPLETE"
}

p2c() {
  echo -e "PHASE 2c: Starting Grafana"
}
p2c_c() {
  echo -e "PHASE 2c: Starting Grafana --------------------------------- COMPLETE"
}

p2a-b() {
  p2a
  p2b
}

p2a-c() {
  p2a
  p2b
  p2c
}

p2a-b_c() {
  p2a_c
  p2b_c
}

p2a-c() {
  p2a_c
  p2b_c
  p2c_c
}

#### Phase 3 (influxdb) strings
p3a() {
  echo -e "PHASE 3a: Creating persistent storage for InfluxDB"
}
p3a_c() {
  echo -e "PHASE 3a: Creating persistent storage for InfluxDB --------- COMPLETE"
}

p3b() {
  echo -e "PHASE 3b: Generating default configuration for InfluxDB"
}
p3b_c() {
  echo -e "PHASE 3b: Generating default configuration for InfluxDB ---- COMPLETE"
}

p3c() {
  echo -e "PHASE 3c: Creating Docker container for InfluxDB"
}
p3c_c() {
  echo -e "PHASE 3c: Creating Docker container for InfluxDB ----------- COMPLETE"
}

p3d() {
  echo -e "PHASE 3d: Starting InfluxDB"
}
p3d_c() {
  echo -e "PHASE 3d: Starting ----------------------------------------- COMPLETE"
}

p3a-b() {
  p3a
  p3b
}

p3a-c() {
  p3a
  p3b
  p3c
}

p3a-d() {
  p3a
  p3b
  p3c
  p3d
}

p3a-b_c() {
  p3a_c
  p3b_c
}

p3a-c_c() {
  p3a_c
  p3b_c
  p3c_c
}

p3a-d_c() {
  p3a_c
  p3b_c
  p3c_c
  p3d_c
}

#### Phase 4 (graphite) strings
p4a() {
  echo -e "PHASE 4a: Creating Docker container for Graphite"
}
p4a_c() {
  echo -e "PHASE 4a: CCreating Docker container for Graphite ---------- COMPLETE"
