#penguins data
require(palmerpenguins)
penguins = palmerpenguins::penguins
penguin_dat = droplevels(subset(penguins, species != "Gentoo"))
# sample t-test 
t.test(subset(penguins, species == "Gentoo")$flipper_length_mm)
#example fit code: fit_species = lm(body_mass_g ~ species, data = penguins)
fit_both = lm(body_mass_g ~ sex * species, data = penguins)
summary(fit_both)