# ANALYSIS MASS MEDIA (NEWS) PROPAGANDA COMMUNIST AND ANTI COMMUNIST IN INDONESIA

# Create data for chart
library(ggplot2)
date_data <-data.frame(Month=c('Jan','Feb','Mar','Apr','May',
                               'Jun','Jul','Aug','Sep','Oct',
                               'Nov','Dec'),
                       Propaganda=c(12,6,13,7,24,24,17,18,90,36,7,6))
# Basic Line
ggplot(data = date_data, aes(x=Month, y=Propaganda, group=1))+
  geom_line(col="red")+
  geom_point()+
  labs(title = "Timeline Framing Media of Communist propaganda in Indonesia",
       x = "Month",
       y = "Propaganda News") +
  theme_bw() +
  theme(plot.title = element_text(face = "bold")) 





# Anti communist propaganda time line
# Create data for chart 
date_againts <-data.frame(Month=c('Jan','Feb','Mar','Apr','May',
                                  'Jun','Jul','Aug','Sep','Oct',
                                  'Nov','Dec'),
                          Against=c(2,0,12,7,8,6,8,10,99,14,0,0))
# Basic Line
ggplot(data = date_againts, aes(x=Month, y=Against, group=1)) +
  geom_line(col = 'red')+
  geom_point()+
  labs(title = "Time Line Framing Media of Anti Communist Propaganda in Indonesia",
       x = "Month",
       y = "News") +
  theme_bw() +
  theme(plot.title = element_text(face = "bold")) 

# communist propaganda time line

date_pro <-data.frame(Month=c('Jan','Feb','Mar','Apr','May',
                              'Jun','Jul','Aug','Sep','Oct',
                              'Nov','Dec'),
                      NPro=c(3,2,0,0,0,0,3,10,16,20,0,45))
# Basic Line
ggplot(data = date_pro, aes(x=Month, y=NPro, group=1)) +
  geom_line(col= 'blue')+
  geom_point()+
  labs(title = "Time Line Framing Media of Communist Propaganda in Indonesia",
       x = "Month",
       y = "News") +
  theme_bw() +
  theme(plot.title = element_text(face = "bold")) 

#  Text Propaganda anti communist indonesia

library(ggplot2)
#Create dataset 
x1 <-c(1,2,3,4,5,6,7,8,9,10,
       11,12,13,14,15,16,17,18,19,20)
y1 <-c(90,84,57,25,42,35,29,25,43,24,24,20,19,18,16,16,15,13,12,7)
label1<-c('Sept','Rebellion','Resurrection','Rise','Film',
          'Rejection','Dark','Murder','Action','Forbidden',
          'Cruelty','Danger','Forbin','Threat','Contary',
          'Betrayal','Coup','Mastermind','Kidnapping','Overthrow')

againts.data <-data.frame(x1, y1, label1)


library(ggplot2)
library(ggrepel)
ggplot(data = againts.data, aes(x=x1, y=y1))+
  geom_point(color ="red", size =3)+
  labs(title = "Text Propaganda Anti-Communist Indonesia",
       x = "Index",
       y = "News") +
  geom_text_repel(aes(label= label1),
                  box.padding = 0.35,
                  point.padding = 0.5,
                  segment.color = 'grey50') +
  theme_classic() +
  theme(plot.title = element_text(face = "bold")) 

# text propaganda communist Indonesia

library(ggplot2)
#create dataset 
x2 <-c(1,2,3,4,5,6,7,8,9,10,
       11,12,13,14,15,16,17,18,19,20)
y2 <-c(5,21,80,53,48,46,46,35,25,18,12,10,7,37,24,16,15,47,34,27)
label2 <-c('Propaganda','Socialist','Marxisme','Movement','Victim',
           'Exile','Human Right','Violation','Struggle','Hero',
           'Knowledge','Literation','Defend','Marx','Thinking',
           'Completion','Media','Figure','Soekarno','Law')

data.pro <-data.frame(x2, y2, label2)
library(ggplot2)
library(ggrepel)
ggplot(data = data.pro, aes(x=x2, y=y2))+
  geom_point(color='blue', size=3)+
  labs(title = "Text Propaganda Communist Indonesia",
       x = "Index",
       y = "News") +
  geom_text_repel(aes(label=label2),
                  box.padding = 0.35,
                  point.padding = 0.5,
                  segment.color = 'grey50')+
  theme_classic() +
  theme(plot.title = element_text(face = "bold")) 




