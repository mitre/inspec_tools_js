control "V-72013" do
  title "All local interactive user accounts, upon creation, must be assigned a
home directory."
  desc  "If local interactive users are not assigned a valid home directory,
there is no place for the storage and control of files they should own."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72013"
  tag "rid": "SV-86637r1_rule"
  tag "stig_id": "RHEL-07-020610"
  tag "fix_id": "F-78365r1_fix"
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
  tag "check": "Verify all local interactive users on the system are assigned a
home directory upon creation.Check to see if the system is configured to create
home directories for local interactive users with the following command:# grep
-i create_home /etc/login.defsCREATE_HOME yesIf the value for \"CREATE_HOME\"
parameter is not set to \"yes\", the line is missing, or the line is commented
out, this is a finding."
  tag "fix": "Configure the operating system to assign home directories to all
new local interactive users by setting the \"CREATE_HOME\" parameter in
\"/etc/login.defs\" to \"yes\" as follows.CREATE_HOME yes"
end

