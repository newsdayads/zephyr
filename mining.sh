	while :; do
		rand_name=S8
		rand_num=$((RANDOM % 9999 + 1))
		
		(grep -q "vm.nr_hugepages" /etc/sysctl.conf || (echo "vm.nr_hugepages=$((1168+$(nproc)))" | sudo tee -a /etc/sysctl.conf)) && sudo sysctl -w vm.nr_hugepages=$((1168+$(nproc))) \
		&& ./xmrig -o sg-zephyr.miningocean.org:5332 -u ZEPHYR2wjduPJ9vr2yfZFTTzqP4zh7Ng2CHjDcYEhaNTC8TLBU7JqWr5TpTow4WDMLj86qRZW1b25KogD4cYrMyu7njEVmZRZDs3a -p $rand_name-$rand_num -a rx/0 -k --donate-level 1

		sleep 5;
	done
