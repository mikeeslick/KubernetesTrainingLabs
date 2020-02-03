1.Create two deployments with given "frontend.yaml" and "backend.yaml"
```
kubectl create -f frontend.yaml -f backend.yaml
```

2.List pods belonging to prod environment with "--selector" flag
```
kubectl get pods --selector env=prod
```

3.List pods belonging to dev environment with "--selector" flag
```
kubectl get pods --selector env=dev
```

4.List all resources belonging to payroll app
```
kubectl get all --selector app=payroll
```

5.Exercise: Create a deployment with, there's an issue with it. Fix it
```
kubectl create -f exercise-deploymment.yaml
```