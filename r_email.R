#Author: Kim Fruge 
#File: r_email.R
#Date: January 12, 2018  
#Purpose: this is how to send an email from R. Particularly useful when running code that takes a couple of hours to get a notification for when it is complete. 
#Note: Only works when sending to a gmail account. This can be beneficial as you can send text to yourself from gmail. 


#install.packages("sendmailR") 
library(sendmailR) 

from<- "<frugekr@gmail.com>"
to<- "<frugekr@gmail.com>"
subject<- "Hello From R"
body <- "It works!"


sendmail(from , to, subject, body, control=list(smtpServer="ASPMX.L.GOOGLE.COM"))


