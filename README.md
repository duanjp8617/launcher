# launcher

1. 将launcher和adaptive-federated-learning源文件同时安装至当前服务器 （~/launcher, ~/adaptive-federated-learning）

2. 将当前目录切换至launcher，运行下列命令，创建基础docker镜像
```shell
sudo docker build -t username/image-name:latest .
```

3. 打开launcher/param.sh，并更新下列参数：
    * 将LOCAL_DIR更新为当前adaptive-federated-learning目录的绝对地址
    * 将IMAGE_NAME更新为第二步中创建的镜像的名称 （username/image-name:latest）
    * 更新CLIENTS和CPUS两个列表，需保证这两个列表大小相同，并和config.py中的n_node变量保持一致。

4. 打开launcher/launch_server.sh，将TARGET_PROGRAM修改为要执行的python文件（只需修改server.py）

5. 打开launcher/launch_client.sh，将TARGET_PROGRAM修改为要执行的python文件（只需修改client2.py）

6. 运行launch_server.sh，通过下列命令查看服务器是否完成初始化
```shell
sudo docker logs server
```

7. 运行launch_client.sh，并检查server容器输出，等待训练完成。
