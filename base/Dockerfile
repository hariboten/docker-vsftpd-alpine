FROM alpine:3.10

#http://vsftpd.beasts.org/vsftpd_conf.html
ENV MY_GROUP_ID=10000 \
	MY_USER_ID=10000 \
	MY_NAME=docker \
	MY_PASSWORD="" \
	\
	TEST_MODE=false \
	DEBUGGING=false \
	\
	CONFIG_FILE="/etc/vsftpd/vsftpd.conf" \
	\
	allow_anon_ssl=NO \
	anon_mkdir_write_enable=NO \
	anon_other_write_enable=NO \
	anon_upload_enable=NO \
	anon_world_readable_only=YES \
	anonymous_enable=YES \
	ascii_download_enable=NO \
	ascii_upload_enable=NO \
	async_abor_enable=NO \
	background=NO \
	check_shell=YES \
	chmod_enable=YES \
	chown_uploads=NO \
	chroot_list_enable=NO \
	chroot_local_user=NO \
	connect_from_port_20=NO \
	debug_ssl=NO \
	delete_failed_uploads=NO \
	deny_email_enable=NO \
	dirlist_enable=YES \
	dirmessage_enable=NO \
	download_enable=YES \
	dual_log_enable=NO \
	force_dot_files=NO \
	force_anon_data_ssl=NO \
	force_anon_logins_ssl=NO \
	force_local_data_ssl=YES \
	force_local_logins_ssl=YES \
	guest_enable=NO \
	hide_ids=NO \
	implicit_ssl=NO \
	listen=YES \
	listen_ipv6=NO \
	local_enable=NO \
	lock_upload_files=YES \
	log_ftp_protocol=NO \
	ls_recurse_enable=NO \
	mdtm_write=YES \
	no_anon_password=NO \
	no_log_lock=NO \
	one_process_model=NO \
	passwd_chroot_enable=NO \
	pasv_addr_resolve=NO \
	pasv_enable=YES \
	pasv_promiscuous=NO \
	port_enable=YES \
	port_promiscuous=NO \
	require_cert=NO \
	require_ssl_reuse=YES \
	run_as_launching_user=NO \
	secure_email_list_enable=NO \
	session_support=NO \
	setproctitle_enable=NO \
	ssl_enable=NO \
	ssl_request_cert=YES \
	ssl_sslv2=NO \
	ssl_sslv3=NO \
	ssl_tlsv1=YES \
	strict_ssl_read_eof=NO \
	strict_ssl_write_shutdown=NO \
	syslog_enable=NO \
	tcp_wrappers=NO \
	text_userdb_names=NO \
	tilde_user_enable=NO \
	use_localtime=NO \
	use_sendfile=YES \
	userlist_deny=YES \
	userlist_enable=NO \
	validate_cert=NO \
	virtual_use_local_privs=NO \
	write_enable=NO \
	xferlog_enable=NO \
	xferlog_std_format=NO \
	\
	accept_timeout=60 \
	anon_max_rate=0 \
	anon_umask=077 \
	chown_upload_mode=0600 \
	connect_timeout=60 \
	data_connection_timeout=300 \
	delay_failed_login=1 \
	delay_successful_login=0 \
	file_open_mode=0666 \
	ftp_data_port=20 \
	idle_session_timeout=300 \
	listen_port=21 \
	local_max_rate=0 \
	local_umask=077 \
	max_clients=0 \
	max_login_fails=3 \
	max_per_ip=0 \
	pasv_max_port=0 \
	pasv_min_port=0 \
	trans_chunk_size=0 \
	\
	anon_root="" \
	banned_email_file="/etc/vsftpd.banned_emails" \
	banner_file="" \
	ca_certs_file="" \
	chown_username="root" \
	chroot_list_file="/etc/vsftpd.chroot_list" \
	cmds_allowed="" \
	cmds_denied="" \
	deny_file="" \
	dsa_cert_file="" \
	dsa_private_key_file="" \
	email_password_file="/etc/vsftpd.email_passwords" \
	ftp_username="ftp" \
	ftpd_banner="" \
	guest_username="ftp" \
	hide_file="" \
	listen_address="" \
	listen_address6="" \
	local_root="" \
	message_file=".message" \
	nopriv_user="nobody" \
	pam_service_name="ftp" \
	pasv_address="" \
	rsa_cert_file="/usr/share/ssl/certs/vsftpd.pem" \
	rsa_private_key_file="" \
	secure_chroot_dir="/usr/share/empty" \
	ssl_ciphers="DES-CBC3-SHA" \
	user_config_dir="" \
	user_sub_token="" \
	userlist_file="/etc/vsftpd.user_list" \
	vsftpd_log_file="/var/log/vsftpd.log" \
	xferlog_file="/var/log/xferlog" \
	\
	seccomp_sandbox=YES \
	allow_writeable_chroot=YES

COPY ["entrypoint.sh", "entrypointTestMode.sh", "/home/"]

RUN apk add --no-cache vsftpd && \
	apk del --quiet --no-cache --progress --purge && \
	rm -rf /var/cache/apk/* && \
	\
	chmod ugo=rx "/home/entrypoint.sh" && \
	chmod ugo=rx "/home/entrypointTestMode.sh"
	
ENTRYPOINT "/home/entrypoint.sh"
