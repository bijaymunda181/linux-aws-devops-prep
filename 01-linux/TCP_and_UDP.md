## TCP (Transmission control protocol)
TCP first establishes a connection between two devices.</br>
Think of it like a phone call:</br>
Client → “Can we connect?” → Server</br>
Client ← “Yes, ready.” ← Server</br>
Client → “Okay.” → Server</br>

This is called the three-way handshake:</br>
```
SYN → SYN-ACK → ACK.
```
After the connection is established, TCP break data into segments and send them. Each segment has sequence information so the receiver can put the data in the correct order. The receiver sends acknowledgement (ACK's) to conform receipt. If data is lost, TCP can transmit it.</br>
It commonly used for things like **Web traffic(HTTP/HTTPS)**, **SSH**, and many file transfer protocol.

## UDP (User Datagram Protocol)
UDP is a connectionless transport protocol. It sends data without establishing a connection, acknowledgment, or retransmission. Because of this, it has low overhead and is faster, making it useful for applications such as **DNS**, **online gaming**, and real-time communication.