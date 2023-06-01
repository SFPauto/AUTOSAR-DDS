# AUTOSAR-DDS
realize the dds on autosar platform
this repository realize whole function of DDS 1.4
the link to the DDS standard is shown below：
https://www.omg.org/spec/DDS/1.4/PDF

# 设置开发环境,posix环境运行autosar os
# 注意需要将仓库中所有的submodule全部拉下来

1、在codespaces中登录docker,对应命令如下
    docker login

2、运行env.sh
    sudo bash env.sh

3、进入docker后，运行setup_tools.sh
    source setup_tools.sh

4、cd /AUTOSAR-DDS/os/examples/posix/periodic

5、goil --target=posix/linux  --templates=../../../goil/templates/ periodic.oil

6、python3 make.py

7、./periodic_exe

# 在新建的task下进行开发工作


