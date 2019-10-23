control "V-72139" do
  title "All uses of the chcon command must be audited."
  desc  "Without generating audit records that are specific to the security and
mission needs of the organization, it would be difficult to establish,
correlate, and investigate the events relating to an incident or identify those
responsible for one.Audit records can be generated from various components
within the information system (e.g., module or policy filter)."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000392-GPOS-00172"
  tag "satisfies": ["SRG-OS-000392-GPOS-00172", "SRG-OS-000463-GPOS-00207",
"SRG-OS-000465-GPOS-00209"]
  tag "gid": "V-72139"
  tag "rid": "SV-86763r3_rule"
  tag "stig_id": "RHEL-07-030580"
  tag "fix_id": "F-78491r5_fix"
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
successful/unsuccessful attempts to use the \"chcon\" command occur.Check the
file system rule in \"/etc/audit/audit.rules\" with the following command:#
grep -i /usr/bin/chcon /etc/audit/audit.rules-a always,exit -F
path=/usr/bin/chcon -F perm=x -F auid>=1000 -F auid!=4294967295 -k
privileged-priv_changeIf the command does not return any output, this is a
finding."
  tag "fix": "Configure the operating system to generate audit records when
successful/unsuccessful attempts to use the \"chcon\" command occur.Add or
update the following rule in \"/etc/audit/rules.d/audit.rules\":-a always,exit
-F path=/usr/bin/chcon -F perm=x -F auid>=1000 -F auid!=4294967295 -k
privileged-priv_changeThe audit daemon must be restarted for the changes to
take effect."
end

