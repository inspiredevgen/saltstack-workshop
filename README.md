![](img/saltstack-logo.png?raw=true)

# Saltstack Workshop

Building a Saltstack Infra and automating the deployment of a WebApp.

### 1. Salt Installation

#### Salt Master

```bash
sudo apt update
sudo apt install salt-master
# after installation - check if salt-master service is running
sudo systemctl status salt-master
## if salt-master is not running, use the command below to start it
sudo systemctl start salt-master
```

#### Salt Minions

```bash
sudo apt update
sudo apt install salt-minion
# after installation - check if salt-master service is running
sudo systemctl status salt-minion
## if salt-master is not running, use the command below to start it
sudo systemctl start salt-minion
```

## 2. Configuration

Using a text editor (vi/vim/nano), open and edit the salt-master config file located at: /etc/salt/master.

```bash
sudo vi /etc/salt/master

# once the file opens - locate the line interface in the config file and set it to your subnet or 0.0.0.0
# save the file with the command :wq
```

## 3. Test Salt Master Minion communication

```bash
# This command will get all grains from all minions
sudo salt '*' grains.items

sudo salt '*' grains.get id
# grains.get <grain_key> to get the value of a specific grain

sudo salt 'app*' grains.get hostname
sudo salt '*web*' grains.get id
```

## 4. Create a Directory Structure to host salt states

```bash
sudo mkdir -p /srv/salt/state

## for each state, create directory inside state

#.e.g
sudo mkdir -p /srv/salt/state/mysql-server
sudo mkdir -p /srv/salt/state/httpd
sudo mkdir -p /srv/salt/state/php
```

## 5. Running a state

### From Salt Master

```bash
sudo salt 'app*' state.sls mysql
```

### From Mions

```bash
sudo salt-call state.sls mysql-server
```

## 5. Contributors:

- Mohamed Bakayoko
- Alhassane Kerte Bah
- Adi Bal-Mayel
