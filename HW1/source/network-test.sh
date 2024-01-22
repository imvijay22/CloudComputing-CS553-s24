#!/bin/bash
input_file="network-test-machinelist.txt"
output_file="network-test-latency.txt"
while IFS= read -r dns_name; do
    if [ -n "$dns_name" ]; then
       rtt_avg=$(ping -c 3 "$dns_name" | tail -1 | awk -F '/' '{print $5}')
       echo "$dns_name $rtt_avg" >> "$output_file"
    fi
done < "$input_file"
echo "The results are added to network-test-latency.txt."
