Name:           rsyslog-logrotate
Version:        1.0
Release:        1
Summary:        script which makes logs
License:        -

Source0:        rsyslog-script.sh
Source1:        local0.conf
Source2:        logrotate-scriptlog

BuildArch:      noarch

%description
rsyslog and logrotate configurations,bash script that makes logs

%install
install -D -pm 755 %{SOURCE0} %{buildroot}/opt/rsyslog-script.sh
install -D -pm 644 %{SOURCE1} %{buildroot}/etc/rsyslog.d/local0.conf
install -D -pm 644 %{SOURCE2} %{buildroot}/etc/logrotate.d/logrotate-scriptlog

%files
/opt/rsyslog-script.sh
/etc/rsyslog.d/local0.conf
/etc/logrotate.d/logrotate-scriptlog

%clean
rm -rf $RPM_BUILD_ROOT
