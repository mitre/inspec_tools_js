control "V-78999" do
  title "All uses of the create_module command must be audited."
  desc  "Without generating audit records that are specific to the security and
mission needs of the organization, it would be difficult to establish,
correlate, and investigate the events relating to an incident or identify those
responsible for one. Audit records can be generated from various components
within the information system (e.g., module or policy filter)."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000471-GPOS-00216"
  tag "satisfies": ["SRG-OS-000471-GPOS-00216", "SRG-OS-000477-GPOS-00222"]
  tag "gid": "V-78999"
  tag "rid": "SV-93705r1_rule"
  tag "stig_id": "RHEL-07-030819"
  tag "fix_id": "F-85749r1_fix"
  tag "cci": ["CCI-000172"]
  tag "nist": ["AU-12 c", "Rev_4"]
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
successful/unsuccessful attempts to use the \"create_module\" command occur.
Check the auditing rules in \"/etc/audit/audit.rules\" with the following
command:Note: The output lines of the command are duplicated to cover both
32-bit and 64-bit architectures. Only the line appropriate for the system
architecture must be present.# grep -iw create_module /etc/audit/audit.rulesIf
the command does not return the following output (appropriate to the
architecture), this is a finding. -a always,exit -F arch=b32 -S create_module
-k module-change-a always,exit -F arch=b64 -S create_module -k module-changeIf
there are no audit rules defined for “create_module”, this is a finding."
  tag "fix": "Configure the operating system to generate audit records when
successful/unsuccessful attempts to use the \"create_module\" command occur.
Add or update the following rules in \"/etc/audit/rules.d/audit.rules\":Note:
The rules are duplicated to cover both 32-bit and 64-bit architectures. Only
the lines appropriate for the system architecture must be configured. -a
always,exit -F arch=b32 -S create_module -k module-change-a always,exit -F
arch=b64 -S create_module -k module-changeThe audit daemon must be restarted
for the changes to take effect."
end

