# Prerequisites

Before dev-env can be provisioned following items must be installed:
* **vagrant** >= 1.7.2
* **virtualbox** >= 4.3.10

You also try with newest releases of the following products. Just
google them and you should find what you need. Although most of the tests
with that were ran using specified versions.

## Windows note
Windows users, in case of provisioning errors, may try to use 32-bit box
instead of 64bit box. To change that open **Vagrantfile** in the root of
the folder and replace

    master.vm.box = "hashicorp/precise64"
    with
    master.vm.box = "hashicorp/precise32"

# Provisioning vagrant

1. Setup you machine
```bash
vagrant up
vagrant ssh master
```
2. After successful ssh to the machine
```bash
nvm install 5.0
nvm use 5.0
nvm alias default node

sudo npm install -g bower gulp node-gyp
```

3. You are ready to have some fun

# Running projects

Projects are as follow:
* ESTAngularBestPractices - best practices with angular 1.4 and ES5
* TodoApp - ES6 With Angular 1.4

## Running project (TodoApp as example)

```bash
vagrant ssh master
cd /vagrant/TodoApp

npm install
bower install

gulp --tasks | echo "Will list all tasks"
gulp serve | "Launching browser sync"
```
