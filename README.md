# [Mass Media Propaganda: Indonesian Communism & Anti-Communism in the Mass Media](https://hrcak.srce.hr/en/file/469510)

This amateur project presents the results of my personal research data analysis using a combination of NVivo and R-Studio that has been published.

#### Source Research 🔎:
Analyzing mass media propaganda of communism and anti-communism in Indonesia.

#### Method 🛠️:
260 news items were collected, then processed using NVivo Pro software such as automatic coding. After that, creating data visuals using R Studio.

#### Analysis Data 📈:
Strip Plot, Scatter Plot, Time-Line and Word Frequency.

## Time - Line Analysis
From all the news, I reconstructed the time sequence of events in news events in monthly measurements.

### Data Frame and Visual 
```r
date_data <-data.frame(Month=c('Jan','Feb','Mar','Apr','May',
                               'Jun','Jul','Aug','Sep','Oct',
                               'Nov','Dec'),
                        Propaganda=c(12,6,13,7,24,24,17,18,90,36,7,6))

ggplot(data = date_data, aes(x=Month, y=Propaganda, group=1))+
  geom_line(col="red")+
  geom_point()+
labs(title = "Timeline Framing Media of Communist propaganda in Indonesia",
     x = "Month",
     y = "Propaganda News") +
  theme_bw() +
  theme(plot.title = element_text(face = "bold")) 

```
![communist propaganda indonesia](timelinecommunistpropaganda.png)

The result is that the case of propaganda of the issue of communism in Indonesia is always highlighted in September, one of the strong factors is on September 30, 1965 which was the rebellion between the Indonesian Communist Party and the Indonesian military. So that the issue of history is always highlighted until now. 
After that we see two perspectives of propaganda in the media by Pro – Communism and Anti – Communism;

### Data Frame and Visual

```r
date_againts <-data.frame(Month=c('Jan','Feb','Mar','Apr','May',
                                     'Jun','Jul','Aug','Sep','Oct',
                                     'Nov','Dec'),
                        Against=c(2,0,12,7,8,6,8,10,99,14,0,0))
# Basic Line
ggplot(data = date_againts, aes(x=Month, y=Against, group=1)) +
  geom_line(col = 'red')+
  geom_point()+
  labs(title = "Time Line Framing Media of Pro Communist Propaganda in Indonesia",
       x = "Month",
       y = "News") +
  theme_classic() +
theme(plot.title = element_text(face = "bold")) 

```


