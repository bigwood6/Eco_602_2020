rm(list = ls())


pol_n_predation = 26
pol_n_no_predation = 184
pol_n_total = 210
pol_predation_rate = (26/210)
  
psd_n_predation = 25
psd_n_no_predation = 706
psd_n_total = 731
psd_predation_rate = (25/731)

print(
  paste0(
    "The seed predation rate for Polyscias fulva is: ",
    round(pol_predation_rate, digits = 3))) 

print(
  paste0(
    "The seed predation rate for Pseudospondias microcarpa is: ",
    round(psd_predation_rate, digits = 3)))