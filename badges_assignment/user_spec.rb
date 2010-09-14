require 'user'

# In importing an existing user, I would check his/her qualification for badges.
# Look up in the Achievements table for the highest badge they do/do not qualify 
#      for and award all badges beneath.
# Maybe lean on the way badges are structured like: 
#      badges.keys[0] == 'commit' && badges.keys[1] >= 100
# Is that possible/feasible, or will I need to restructure the way 
#      badges are held (hash of hashes or array of arrays)?
# TL;DR: Maybe using an array as a hash key isn't the best idea in the universe.