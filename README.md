# Trainings
Combines trainings repositories

# Provisioning vagrant

1. Setup you machine
```bash
vagrant up
vagrant ssh master
```
2. After successfull ssh to the machine
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
