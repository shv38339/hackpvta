# Let's visualize the average number of ridership for MWF classes
# Then we'll hone in on MWF classes that start at 8am

# MWF classes that start at 8am
mwf <- d2 %>% group_by(route, inbound_outbound, hm) %>% 
  select(route, inbound_outbound, month, day, hm, onboard) %>%
  arrange(route, inbound_outbound, hm) %>%
  filter((day %in% c(2, 4, 6)) & (hm >= 7.25 & hm <= 17.5))%>%
  summarise(avg = mean(onboard))

ggplot(data = mwf, aes(x = hm, y = avg)) + geom_line() + facet_grid(route ~ inbound_outbound) + 
  geom_vline(xintercept = c(8, 9.08, 10.17, 11.25, 12.33, 13.42, 14.5, 16, 17.5), colour = "darkred") +
  xlab("Hour/minutes by decimals") + ylab("# of folks onboard") + 
  ggtitle("Ridership between 7:15am - 5:30pm for MWF classes")

mwf8 <- d2 %>% group_by(route, inbound_outbound, hm) %>%
  select(route, inbound_outbound, month, day, hm, onboard) %>%
  arrange(route, inbound_outbound, hm) %>%
  filter((day %in% c(2, 4, 6)) & (hm > 7.24 & hm < 8.25)) %>% 
  summarise(avg = mean(onboard))

ggplot(data = mwf8, aes(x = hm, y = avg)) + geom_line() + facet_grid(route ~ inbound_outbound) + 
  geom_vline(xintercept = 8, colour = "darkred") +
  xlab("Hour/minutes by decimals") + ylab("# of folks onboard") + 
  ggtitle("Ridership between 7:15am - 8:15am for 8am MWF classes")

# In another world where there is an infinite amount of time in a day...
# let's transform this into a ggviz graphic. It may take an hour or so.