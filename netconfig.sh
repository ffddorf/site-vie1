#!/bin/sh

set -x

ip tunnel add tun1 mode gre local 45.151.166.3 remote 178.13.251.85
ip addr add 10.129.0.2/31 dev tun1
ip addr add fdcb:aa6b:5532:2::1/64 dev tun1
ip link set up dev tun1

ip tunnel add tun2 mode gre local 45.151.166.3 remote 178.13.251.114
ip addr add 10.129.0.4/31 dev tun2
ip addr add fdcb:aa6b:5532:3::1/64 dev tun2
ip link set up dev tun2

ip tunnel add tun4 mode gre local 45.151.166.3 remote 178.15.126.23
ip addr add 10.129.0.14/31 dev tun4
ip addr add fdcb:aa6b:5532:8::1/64 dev tun4
ip link set up dev tun4

ip tunnel add tun5 mode gre local 45.151.166.3 remote 178.13.101.212
ip addr add 10.129.0.46/31 dev tun5
ip addr add fdcb:aa6b:5532:16::1/64 dev tun5
ip link set up dev tun5
