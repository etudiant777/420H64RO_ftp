FROM ubuntu:latest
WORKDIR /home/tp1_chris_et_samuel
RUN apt-get update -y && apt-get install vsftpd -y && apt-get install systemctl -y && apt-get install vim -y && apt-get install net-tools -y
RUN mv /etc/vsftpd.conf /etc/vsftpd.conf.bak
COPY vsftpd.conf /etc/vsftpd.conf
RUN useradd ftpuser -m -p $(openssl passwd -1 ftpuser)
RUN mkdir /home/ftpuser/ftp
RUN chown nobody:nogroup /home/ftpuser/ftp
RUN chmod a-w /home/ftpuser/ftp
RUN mkdir /home/ftpuser/ftp/files
RUN chown ftpuser:ftpuser /home/ftpuser/ftp/files
RUN systemctl enable vsftpd
CMD ["/bin/bash"]
