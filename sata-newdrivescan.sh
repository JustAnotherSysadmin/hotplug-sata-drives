#/bin/bash
#echo "- - -" > /sys/class/scsi_host/host0/scan
#echo "- - -" > /sys/class/scsi_host/host1/scan
#echo "- - -" > /sys/class/scsi_host/host2/scan
#echo "- - -" > /sys/class/scsi_host/host3/scan
#echo "- - -" > /sys/class/scsi_host/host4/scan
#echo "- - -" > /sys/class/scsi_host/host5/scan
#echo "- - -" > /sys/class/scsi_host/host6/scan
#echo "- - -" > /sys/class/scsi_host/host7/scan

SCSIHOSTDIR=/sys/class/scsi_host

THEHOSTS=( `ls ${SCSIHOSTDIR}` )

for i in "${THEHOSTS[@]}"; do
  echo Rescanning the SCSI SATA bus...
  echo Writing "- - -" to ${SCSIHOSTDIR}/${i}/scan
  echo "- - -" > ${SCSIHOSTDIR}/${i}/scan
  echo
done
