# Importing data
hotel_bookings <- read.csv("hotel_bookings.csv")
# Previewing the dataset
head(hotel_bookings)
colnames(hotel_bookings)
#Installing and loading ggplot2
install.packages("ggplot2")
library(ggplot2)
#Visualising some data
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))
ggsave("Children vs Lead_time.png")
#Which market segments generate the largest number of bookings and where
#these booking are made:city hotels or resort hotels?
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))
ggsave("City Hotels vs Resort Hotels.png")
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)
ggsave("Market_segments_separated.png")
#Showing the relationship between lead time and quests travelling with children
#for online bookings at city hotels
onlineta_city_hotels <- hotel_bookings %>% 
  filter(hotel == "City Hotel") %>% 
  filter(market_segment == "Online TA")
View(onlineta_city_hotels)
ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x=lead_time, y = children))
ggsave("Online_city_hotels.png")
#Final visualisation
min(hotel_bookings$arrival_date_year)
max(hotel_bookings$arrival_date_year)
mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title = "Comparison of market segments by hotel type",
       caption = paste0("Data from: ", mindate, "to ", maxdate),
       x= "Market segment",
       y= "Number of bookings")
ggsave("Market_segment_comparison.png")
  
  