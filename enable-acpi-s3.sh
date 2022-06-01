#!/bin/bash
cd /tmp && \
acpidump > acpidump && \
acpixtract -a acpidump && \
iasl -d *.dat && \

sed -i 's/DefinitionBlock ("", "DSDT", 2, "_ASUS_", "Notebook", 0x01072009)'\
'/DefinitionBlock ("", "DSDT", 2, "_ASUS_", "Notebook", 0x01072010)/' \
dsdt.dsl && \

sed -i 's/Name (XS3, Package (0x04)'\
'/Name (_S3, Package (0x04)/' dsdt.dsl && \

iasl -sa dsdt.dsl && \
iasl -sa facp.dsl && \
iasl -sa ssdt1.dsl && \
mkdir -p kernel/firmware/acpi && \
cp dsdt.aml kernel/firmware/acpi && \
cp facp.aml kernel/firmware/acpi/ && \
cp ssdt1.aml kernel/firmware/acpi && \
find kernel | cpio -H newc --create > /boot/acpi_override && \
echo 'Update ACPI success' && \
exit 0

echo 'Update failed' && exit 1
