control "V-72043" do
  title "File systems that are used with removable media must be mounted to
prevent files with the setuid and setgid bit set from being executed."
  desc  "The \"nosuid\" mount option causes the system to not execute
\"setuid\" and \"setgid\" files with owner privileges. This option must be used
for mounting any file system not containing approved \"setuid\" and \"setguid\"
files. Executing files from untrusted file systems increases the opportunity
for unprivileged users to attain unauthorized administrative access."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72043"
  tag "rid": "SV-86667r1_rule"
  tag "stig_id": "RHEL-07-021010"
  tag "fix_id": "F-78395r1_fix"
  tag "cci": ["CCI-000366"]
  tag "nist": ["CM-6 b", "Rev_4"]
  tag "false_negatives": nil
  tag "false_positives": nil
  tag "documentable": false
  tag "mitigations": nil
  tag "severity_override_guidance": false
  tag "potential_impacts": nil
  tag "third_party_tools": nil
  tag "mitigation_controls": nil
  tag "responsibility": nil
  tag "ia_controls": nil
  tag "check": "Verify file systems that are used for removable media are
mounted with the \"nouid\" option.Check the file systems that are mounted at
boot time with the following command:# more
/etc/fstabUUID=2bc871e4-e2a3-4f29-9ece-3be60c835222     /mnt/usbflash      vfat
  noauto,owner,ro,nosuid                        0 0If a file system found in
\"/etc/fstab\" refers to removable media and it does not have the \"nosuid\"
option set, this is a finding."
  tag "fix": "Configure the \"/etc/fstab\" to use the \"nosuid\" option on file
systems that are associated with removable media."
end

