cat /etc/drbd.d/r0.res
resource r0 {
    net {
        after-sb-0pri discard-least-changes;
        after-sb-1pri call-pri-lost-after-sb;
        after-sb-2pri call-pri-lost-after-sb;
        }

  on IBSng-Broadband-core-db-redundancy {
    device    /dev/drbd1;
    disk      /dev/sdb9;
    address   192.168.250.1:7789;
    meta-disk internal;
  }
  on IBSng-Broadband-core-db {
    device    /dev/drbd1;
    disk      /dev/sdb9;
    address   192.168.250.2:7789;
    meta-disk internal;
  }
}
