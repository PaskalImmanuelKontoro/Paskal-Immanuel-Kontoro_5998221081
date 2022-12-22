install.packages("shiny")
install.packages("shinydashboard")
install.packages("summarytools")
install.packages("readxl")
install.packages("plotly")
install.packages("ggplot2")
install.packages("rhandsontable")
install.packages("datasets")
install.packages("dplyr")
install.packages("tidyr")
install.packages("forcats")
install.packages("shinydashboardPlus")
install.packages("leaflet")
install.packages("htmltools")
install.packages("DT")
install.packages("shinyjqui")
install.packages("igraph")
install.packages("tibble")
install.packages("shinyWidgets")
install.packages("shinyBS")
install.packages("shinybusy")
install.packages("sf")
install.packages("reactable")
install.packages("reactablefmtr")
install.packages("grid")
install.packages("janitor")
install.packages("readxl")

library(shiny)
library(shinydashboard)
library(summarytools)
library(readxl)
library(plotly)
library(ggplot2)
library(rhandsontable)
library(datasets)
library(dplyr)
library(tidyr)
library(forcats)
library(shinydashboardPlus)
library(leaflet)
library(htmltools)
library(DT)
library(shinyjqui)
library(igraph)
library(tibble)
library(shinyWidgets)
library(shinyBS)
library(shinybusy)
library(sf)
library(reactable)
library(reactablefmtr)
library(grid)
library(janitor)
library(readxl)


# Define UI for application that draws a histogram
setwd("C:/Users/marth/OneDrive/Documents/Mk AKB")
data<-read.csv("data.csv",sep=",")
data
data2 = data
data2
str(data2)

setwd("C:/Users/marth/OneDrive/Documents/Mk AKB")
data1<-read.csv("data1.csv",sep = ";")
data1

headerItem<-dashboardHeader(title=strong("Dashboard..."))

sidebarItem<-dashboardSidebar(
  sidebarMenu(
    menuItem("Home", tabName = "home", icon = icon("home")),
    menuItem("Pendahuluan",tabName="pendahuluan",icon=icon("pencil-alt")),
    menuItem("Statistika Deskriptif", tabName = "grafik1",icon = icon("table")),
    menuItem("Statistika Predictive", tabName = "grafik2",icon = icon("table"))
    
  )
)
bodyItem<-dashboardBody(
  tabItems(
    tabItem(tabName = "home", 
            div(h1("Data Kesehatan Provinsi Sulawesi Tengah"),style="text-align: center;"),
            div(h2("Tahun 2021"),style="text-align: center;"),br(),
            box(title = "Deskripsi",width = 12,
                h4("Dashboard ini menunjukkan bahwa data mengenai Kabupaten/Kota, Jumlah Penduduk, Jumlah Rumah Sakit, Jumlah Dokter, dan Jumlah Bayi Lahir."),
                br(), 
                h4("Dalam dashboard ini, informasi yang ingin kami sampaikan kepada pemerintah tentang data mengenai kesehatan yang ada di Provinsi Sulawesi Tengah."),
                status = NULL,style = "font-size:150%,  text-align:center"
            )
    ),
    tabItem(tabName="pendahuluan",
            h2("Latar Belakang"),
            br(),
            h4("Kesehatan adalah keadaan sehat baik secara fisik,
                  mental, dan spiritual maupun sosial yang memungkinkan
                  setiap orang untuk hidup produktif secara sosial dan 
                  ekonomis, Karena hal tersebut sangat penting bagi 
                  berbagai sarana dan prasarana dalam bidang kesehatan 
                  untuk senantiasa memberi pelayanan kesehatan kepada
                  masyarakat dengan baik."),
            br(),
            h4("Dalam era informasi sekarang ini kebutuhan terhadap informasi secara 
               cepat, tepat, dan akurat sangat diperlukan sebagai bahan pengambilan 
               keputusan. Pemrosesan data yang cepat dan akurat dapat dengan 
               mudah di peroleh melalui alat yang dikenal sebagai komputer. Komputer 
               sebagai salah satu alat bantu manusia yang perannya tidak dapat di 
               pisahkan dalam berbagai sektor, khususnya sektor kesehatan pada saat 
                  ini dan masa mendatang."),
            br(),
            h2("Rumusan Masalah"),
            br(),
            h4(" 1. Merancang dashboard dengan tujuan pemantauan data 
               kesehatan provinsi Sulawesi Tengah mulai dari data jumlah rumah 
               sakit, jumlah warga terkena penyakit tertentu, jumlah dokter, 
               dll….", style="color: black"),
            br(),
            h4("2. Mengetahui persebaran fasilitas kesehatan provinsi Sulawesi 
               Tengah seperti melihat persebaran jumlah rumah sakit dan jumlah 
               dokter di setiap kota/kabupaten.", style="color: black"),
            br(),
            h4("3.	Mengetahui ada/tidaknya pengaruh dari antar variabel data 
               kesehatan provinsi Sulawesi Tengah.",  style="color: black"),
            br(),
            h2("Manfaat"),
            br(),
            h4("1. Sebagai dasar pengambilan keputusan dan pengadaan kebijakan 
               bagi pemerintah provinsi Sulawesi Tengah dalam bidang Kesehatan.", 
               style="color: black"),
            br(),
            h4("2. Sebagai media informasi terkait data seputar kesehatan 
               dalam provinsi Sulawesi Tengah.", 
               style="color: black"),
            br(),
            h2("Sumber Data"),
            br(),
            h4("Untuk sumber data, kami menggunakan buku pubikasi BPS 
               Provinsi Sulawesi Tengah dalam
                  Angka 2021", style="color: black"),
            br()),
            
    tabItem(tabName = "grafik1",
            box(width=6.5,title="Bar Chart Kabupaten/Kota Vs Jumlah Dokter",
                plotOutput("plot1")),
            box(width=6.5,title="Bar Chart Kabupaten/Kota Vs Jumlah Rumah Sakit",
                plotOutput("plot2")),
            box(width=6.5,title="Bar Chart Kabupaten/Kota Vs Jumlah Penduduk",
                plotOutput("plot3")),
            box(width=6.5,title="Bar Chart Kabupaten/Kota Vs Jumlah Bayi Lahir",
                plotOutput("plot4")),
            box(width=6.5,title="Bar Chart Top 10 Penyakit",
                plotOutput("plot5")),
            box(width=6.5,title="Scatter Plot Jumlah Penduduk Vs Jumlah Bayi Lahir",
                plotOutput("plot6")),
            box(width=6.5,title="Scatter Plot Jumlah Penduduk Vs Jumlah Rumah Sakit",
                plotOutput("plot7"))
            ),
    
    tabItem(tabName = "grafik2",
            box(width=6.5,title="Scatter Plot Jumlah Penduduk Vs Jumlah Rumah Sakit",
                plotOutput("plot8"),
                verbatimTextOutput("Teks1"),
                htmlOutput("Interpretasi1"),
                htmlOutput("Inter1")),
            box(width=6.5,title="Scatter Plot Jumlah Dokter Vs Jumlah Rumah Sakit",
                plotOutput("plot9"),
                verbatimTextOutput("Teks2"),
                htmlOutput("Interpretasi2"),
                htmlOutput("Inter2")))
    
           
    
  ))

ui<-dashboardPage(header=headerItem,sidebar=sidebarItem, body=bodyItem)

server<-function(input,output,session){
  #tulis output disini
  output$plot1<-renderPlot({
    ggplot(data=data, aes(x= Kabupaten.Kota, y=Jumlah.Dokter)) + 
      geom_bar(stat="identity", fill="steelblue")+ coord_flip() +
      theme_minimal()
  })
  
  output$plot2<-renderPlot({
    ggplot(data=data, aes(x= Kabupaten.Kota, y=Jumlah.Rumah.Sakit)) + 
      geom_bar(stat="identity", fill="orange")+ coord_flip() +
      theme_minimal()
  })
  output$plot3<-renderPlot({
    ggplot(data=data, aes(x= Kabupaten.Kota, y=Jumlah.Penduduk.)) + 
      geom_bar(stat="identity", fill="yellow")+ coord_flip() +
      theme_minimal()
  })
  output$plot4<-renderPlot({
    ggplot(data=data, aes(x= Kabupaten.Kota, y=Jumlah.Bayi.Lahir)) + 
      geom_bar(stat="identity", fill="green")+ coord_flip() +
      theme_minimal()
  })
  output$plot5<-renderPlot({
    ggplot(data=data1, aes(x= Penyakit, y=Jumlah.Kasus)) + 
      geom_bar(stat="identity", fill="grey")+ coord_flip() +
      theme_minimal()
  })
  
  output$plot6<-renderPlot({
    plot(x = data$Jumlah.Penduduk., y = data$Jumlah.Bayi.Lahir,
         main='Scatter Plot Jumlah Penduduk Vs Jumlah Bayi Lahir',
         xlab='Jumlah Penduduk',ylab='Jumlah Bayi Lahir', pch = 19)
    
  })
  output$plot7<-renderPlot({
    plot(x = data$Jumlah.Dokter, y = data$Jumlah.Rumah.Sakit,
         main='Scatter Plot Jumlah Dokter Vs Jumlah Rumah Sakit',
         xlab='Jumlah Dokter',ylab='Jumlah Rumah Sakit',pch = 19)
    
  })
  
  output$plot8<-renderPlot({
    plot(x = data$Jumlah.Penduduk., y = data$Jumlah.Rumah.Sakit,
         main='Scatter Plot Jumlah Penduduk Vs Jumlah Rumah Sakit',
         xlab='Jumlah Penduduk',ylab='Jumlah Rumah Sakit', pch = 19)
    # plot a regression line
    abline(lm(Jumlah.Rumah.Sakit~Jumlah.Penduduk.,data=data),col='purple')
    
  })
  
  output$Teks1<-renderPrint({
    model1 = lm(data$Jumlah.Rumah.Sakit~data$Jumlah.Penduduk.)
    summary(model1)
  })
  
  output$Interpretasi1<-renderText({
    model1 = lm(data$Jumlah.Rumah.Sakit~data$Jumlah.Penduduk.)
    S1 = summary(model1)
    Koef1 = S1$coefficients
    Intersep1 = Koef1[1,1]
    Slope1 = Koef1[2,1]
    paste0("<p>"," ","</p>",
           "<b>","Model","</b>",
           "<p>"," Jumlah Rumah Sakit= ",Intersep1,"+", Slope1, "*Jumlah Penduduk" ,"</p>",
           "<p>","</p>")
    
  })
  
  output$plot9<-renderPlot({
    plot(x = data$Jumlah.Rumah.Sakit, y = data$Jumlah.Dokter,
         main='Scatter Plot Rumah Sakit Vs Jumlah Dokter',
         xlab='Jumlah Rumah Sakit',ylab='Jumlah Dokter')
    # plot a regression line
    abline(lm(Jumlah.Dokter~Jumlah.Rumah.Sakit,data=data),col='red')
    
  })
  output$Teks2<-renderPrint({
    model2 = lm(data$Jumlah.Dokter~data$Jumlah.Rumah.Sakit)
    summary(model2)
  })
  
  output$Interpretasi2<-renderText({
    model2 = lm(data$Jumlah.Dokter~data$Jumlah.Rumah.Sakit)
    S2 = summary(model2)
    Koef2 = S2$coefficients
    Intersep2 = Koef2[1,1]
    Slope2 = Koef2[2,1]
    paste0("<p>"," ","</p>",
           "<b>","Model","</b>",
           "<p>"," Jumlah Dokter= ",Intersep2,"+", Slope2, "*Jumlah Rumah Sakit" ,"</p>",
           "<p>","</p>")
  })
  output$Inter1<-renderText({
    paste0("<p>"," ","</p>",
           "<b>","Interpretasi Model","</b>",
           "<p>","Berdasarkan output di atas, model regresinya bisa dilihat dari 
           bagian estimate, yaitu Y =0,187006306673087+0,000115779292418848*
           Jumlah Penduduk. Pada konstanta sebesar 0,187 menunjukkan bahwa jika 
           variabel jumlah penduduk konstan (0) maka variabel Y (jumlah rumah 
           sakit) akan bergerak dengan sendirinya sebesar 0,187. Pada koefisien 
           regresi variabel jumlah penduduk sebesar 0,0001157 menunjukkan bahwa 
           jika variabel jumlah penduduk meningkat 1 satuan maka akan 
           meningkatkan variabel jumlah rumah sakit sebesar 0,0001157. 
           Dari uji parsial dengan t-value sebesar 2,294 dan p-value sebesar 
           0,0425 dimana tingkat signifikansi yang digunakan adalah 0.05, memberikan 
           hasil tolak H0 yang artinya secara parsial variabel jumlah penduduk 
           secara signifikan berpengaruh terhadap jumlah rumah sakit dan pada 
           uji simultan didapatkan bahwa p-value sebesar 0,04247 dengan tingkat 
           signifikansi sebesar 5% memberikan hasil tolah H0 yang artinya secara 
           simultan variabel jumlah penduduk mempengaruhi variabel jumlah rumah 
           sakit.  Adjusted R square yaitu 0,2621 yang artinya sebanyak 26,21% 
           keragaman jumlah rumah sakit mampu dijelaskan oleh jumlah penduduk 
           dan sisanya  dijelaskan oleh faktor lainnya." ,"</p>",
           "<p>","</p>")
  })
  
  output$Inter2<-renderText({
    paste0("<p>"," ","</p>",
           "<b>","Interpretasi Model","</b>",
           "<p>","Berdasarkan output di atas, model regresinya bisa dilihat dari 
           bagian estimate, yaitu Y = -3,88405797101452+31,7971014492754*Jumlah 
           Rumah Sakit. Pada konstanta sebesar -3,884 menunjukkan bahwa jika 
           variabel jumlah penduduk konstan (0) maka variabel Y (jumlah rumah 
           sakit) akan bergerak dengan sendirinya sebesar -3,884. Pada koefisien 
           regresi variabel jumlah rumah sakit sebesar 31,797 menunjukkan bahwa 
           jika variabel jumlah penduduk meningkat 1 satuan maka akan 
           meningkatkan variabel jumlah rumah sakit sebesar 31,797. 
           Dari uji parsial dengan t-value sebesar 13,083 dan p-value sebesar 
           4,76e-08 di mana tingkat signifikansi yang digunakan adalah 0.05, 
           memberikan hasil tolak H0 yang artinya secara parsial variabel jumlah 
           rumah sakit secara signifikan berpengaruh terhadap jumlah dokter dan 
           pada uji simultan didapatkan bahwa p-value sebesar 4,764e-08 dengan 
           tingkat signifikansi sebesar 5% memberikan hasil tolah H0 yang 
           artinya secara simultan variabel jumlah rumah sakit mempengaruhi 
           variabel jumlah dokter.  Adjusted R square yaitu 0,9341 yang artinya 
           sebanyak 93,41% keragaman jumlah dokter mampu dijelaskan oleh rumah 
           sakit dan sisanya  dijelaskan oleh faktor lainnya." ,"</p>",
           "<p>","</p>")
  })
}

shinyApp(ui,server)

