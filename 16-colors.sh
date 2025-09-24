
user=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $user -gt 0 ]; then
    echo "ERROR:: you are not allowed to run this script use root privilege"
    exit 1
fi

VALIDATE(){
    if [ $1 -gt 0]; then
        echo -e "Installing $2 ..$R Failure $N"
        exit 1
    else
        echo -e "Installing $2 ..$G Success $N"

    fi

}

dnf list installed mysql
# install if mysql is not already installed
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo -e "mysql is already installed... $Y SKIPPING $N"
fi

dnf list installed nginx
# install if nginx is not already installed
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e "nginx is already installed ... $Y SKIPPING $N"
fi

dnf list installed python3
# install if nginx is not already installed
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo -e "python3 is already installed ... $Y SKIPPING $N"
fi

