control "V-72053" do
  title "If the cron.allow file exists it must be owned by root."
  desc  "If the owner of the \"cron.allow\" file is not set to root, the
possibility exists for an unauthorized user to view or to edit sensitive
information."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72053"
  tag "rid": "SV-86677r2_rule"
  tag "stig_id": "RHEL-07-021110"
  tag "fix_id": "F-78405r1_fix"
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
  tag "check": "Verify that the \"cron.allow\" file is owned by root.Check the
owner of the \"cron.allow\" file with the following command:# ls -al
/etc/cron.allow-rw------- 1 root root 6 Mar  5  2011 /etc/cron.allowIf the
\"cron.allow\" file exists and has an owner other than root, this is a finding."
  tag "fix": "Set the owner on the \"/etc/cron.allow\" file to root with the
following command:# chown root /etc/cron.allow"
end

