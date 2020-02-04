1.Where are the static pods located ?
```
systemctl status kubelet
```

2.We are looking for kubelet configuration, the flag is"--config" find the path of the "config.yaml"
```
cat /var/lib/kubelet/config.yaml | grep staticPodPath
```

3.List the content of the staticPodPath
```
ls <add-here-full-path>
```

4.Identify static pods
```
kubectl get pods --all-namespaces
```

5.Create a static pod called static-busybox, image busybox and command "sleep 1000"
```
kubectl run --restart=Never --image=busybox static-busybox --dry-run -o yaml --command -- sleep 1000 > /etc/kubernetes/manifests/static-busybox.yaml
```

6.Change the image on the static pod to use "busybox:1.28.4"
```
kubectl edit pod static-busybox-master
```

7.Run the create-static-pod.sh
```
chmod +x create-static-obselete-pod.sh
```
```
./create-static-obselete-pod.sh
```

8.Exercise: Delete the static pods called static-obselete-pod
```
kubectl delete pod static-obselete-pod-<node-name>
```
