Sys.setenv(JAVA_HOME = "C://Program Files (x86)/Java/jre1.8.0_91")
# install.packages("https://cran.r-project.org/bin/windows/contrib/3.3/rJava_0.9-8.zip",repos = NULL,type = "win.binary")
# install.packages("https://cran.r-project.org/bin/windows/contrib/3.2/mailR_0.4.1.zip",repos = NULL,type = "win.binary")
# require(rJava)
library(rJava)
library(mailR)  
from <- "xx@gmail.com"
to <-  "xx@gmail.com"
send.mail(from = from,
          to = to,
          subject = "Test",
          body = "Automated Email: This is a test",
          smtp = list(host.name = "smtp.gmail.com",
                      port = 465,
                      user.name = "xx@gmail.com",
                      passwd = "******",
                      ssl = TRUE),
          authenticate = TRUE,
          send = TRUE)