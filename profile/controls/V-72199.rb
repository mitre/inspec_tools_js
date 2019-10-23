control "V-72199" do
  title "All uses of the rename command must be audited."
  desc  "If the system is not configured to audit certain activities and write
them to an audit log, it is more difficult to detect and track system
compromises and damages incurred during a system compromise."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000466-GPOS-00210"
  tag "satisfies": ["SRG-OS-000466-GPOS-00210", "SRG-OS-000467-GPOS-00210",
"SRG-OS-000468-GPOS-00212", "SRG-OS-000392-GPOS-00172"]
  tag "gid": "V-72199"
  tag "rid": "SV-86823r3_rule"
  tag "stig_id": "RHEL-07-030880"
  tag "fix_id": "F-78553r5_fix"
  tag "cci": ["CCI-000172", "CCI-002884"]
  tag "nist": ["AU-12 c", "MA-4 (1) (a)", "Rev_4"]
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
  tag "check": "Verify the operating system generates audit records when
successful/unsuccessful attempts to use the \"rename\" command occur.Check the
file system rules in \"/etc/audit/audit.rules\" with the following
commands:Note: The output lines of the command are duplicated to cover both
32-bit and 64-bit architectures. Only the lines appropriate for the system
architecture must be present.# grep -iw rename /etc/audit/audit.rules-a
always,exit -F arch=b32 -S rename -F perm=x -F auid>=1000 -F auid!=4294967295
-k delete-a always,exit -F arch=b64 -S rename -F perm=x -F auid>=1000 -F
auid!=4294967295 -k deleteIf there are no audit rules defined for the
\"rename\" command, this is a finding."
  tag "fix": "Configure the operating system to generate audit records when
successful/unsuccessful attempts to use the \"rename\" command occur.Add the
following rules in \"/etc/audit/rules.d/audit.rules\":Note: The rules are
duplicated to cover both 32-bit and 64-bit architectures. Only the lines
appropriate for the system architecture must be configured.-a always,exit -F
arch=b32 -S rename -F perm=x -F auid>=1000 -F auid!=4294967295 -k delete-a
always,exit -F arch=b64 -S rename -F perm=x -F auid>=1000 -F auid!=4294967295
-k deleteThe audit daemon must be restarted for the changes to take effect."
end

