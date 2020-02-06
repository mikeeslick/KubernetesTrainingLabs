1.Deploy an example application
```
kubectl create -f webapp-1.yaml
```

2.A user called "User5" has communicated to being not able to login to the app, check the logs
```
kubectl logs webapp-1
```

3.Deploy a second application
```
kubectl create -f webapp-2.yaml
```

4.Another user having problems when purchasing an item, find the user and the rootcause
```
kubectl logs webapp-2 <container-name>
```