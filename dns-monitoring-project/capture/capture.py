from scapy.all import sniff, DNS, DNSQR

def process_packet(packet):
    if packet.haslayer(DNS) and packet.haslayer(DNSQR):
        src_ip = packet[0][1].src
        dst_ip = packet[0][1].dst
        query_name = packet[DNSQR].qname.decode('utf-8')
        print(f"DNS Query: {src_ip} -> {dst_ip}, Domain: {query_name}")

if __name__ == "__main__":
    print("Starting DNS capture...")
    sniff(filter="port 53", prn=process_packet)
