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

## Contributors:

- Mohamed Bakayoko
- Alhassane Kerte Bah
- Adi Bal-Mayel
