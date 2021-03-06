control "V-72083" do
  title "The operating system must off-load audit records onto a different
system or media from the system being audited."
  desc  "Information stored in one location is vulnerable to accidental or
incidental deletion or alteration.Off-loading is a common process in
information systems with limited audit storage capacity."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000342-GPOS-00133"
  tag "satisfies": ["SRG-OS-000342-GPOS-00133", "SRG-OS-000479-GPOS-00224"]
  tag "gid": "V-72083"
  tag "rid": "SV-86707r1_rule"
  tag "stig_id": "RHEL-07-030300"
  tag "fix_id": "F-78435r1_fix"
  tag "cci": ["CCI-001851"]
  tag "nist": ["AU-4 (1)", "Rev_4"]
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
  tag "check": "Verify the operating system off-loads audit records onto a
different system or media from the system being audited.To determine the remote
server that the records are being sent to, use the following command:# grep -i
remote_server /etc/audisp/audisp-remote.confremote_server = 10.0.21.1If a
remote server is not configured, or the line is commented out, ask the System
Administrator to indicate how the audit logs are off-loaded to a different
system or media. If there is no evidence that the audit logs are being
off-loaded to another system or media, this is a finding."
  tag "fix": "Configure the operating system to off-load audit records onto a
different system or media from the system being audited.Set the remote server
option in \"/etc/audisp/audisp-remote.conf\" with the IP address of the log
aggregation server."
end

