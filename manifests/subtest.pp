class test::subtest {

$myhtml = @(END)
<html>
<head>
<title>
This is my first module in Nokia
</title>
</head>
<body>
<h1> Welcome to scmgalaxy.com </h1>
</body>
</html>
END

if $facts['os']['family'] == 'RedHat' {
        package { 'httpd':
          ensure => installed
        }

        service { 'httpd':
         ensure => running
        }

        file { '/var/www/html/index.html':
          ensure => present,
          content => $myhtml
        }
}

}

