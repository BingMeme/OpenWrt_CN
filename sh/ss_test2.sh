#!/bin/ash

test_method='aes-128-ctr aes-128-cfb aes-128-gcm aes-256-ctr aes-256-cfb aes-256-gcm chacha20 chacha20-ietf chacha20-ietf-poly1305 rc4-md5 xchacha20-ietf-poly1305'

gen_img_file(){
	dd if=/dev/zero of=/www/test.img bs=1M count=0 seek=5000
}

gen_ss_json(){
	cat <<-EOF > $PWD/ss.json
	{
	  "server":"127.0.0.1",
	  "server_port":8388,
	  "local_port":1080,
	  "password":"password",
	  "timeout":300,
	  "method":"$1",
	  "reuse_port":true
	}
	EOF
}

launch_ss(){
	i=0
	while [ $i -lt 4 ]
	do
		ss-server -c $PWD/ss.json >/dev/null 2>&1 &
		ss-local -c  $PWD/ss.json >/dev/null 2>&1 &
		let i++
	done
}

stop_ss(){
	killall ss-server ss-local
}

clean_all(){
	rm -f /www/test.img $PWD/ss.json $PWD/*curl_info
}

main(){
	set -x
	gen_img_file
	for method in $test_method
	do
		gen_ss_json $method
		launch_ss
		sleep 1s
		curl --socks5 127.0.0.1 127.0.0.1/test.img -o /dev/null 2>&1 | tee $PWD/${method}_curl_info
		stop_ss
	done
	set +x
	echo
	echo -----------------nmsl friendlyarm -----------------
	for method in $test_method
	do
		echo "          Method $method speed: `cat ${method}_curl_info |grep '100'|awk -F ' ' '{print $(NF-5)}'`"
	done
	echo -----------------nmsl friendlyarm -----------------
	echo
	set -x
	clean_all
}

main
