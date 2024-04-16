install.packages("readxl")
data=read_excel("customer_shopping_data.xlsx")
data
summary(data)

invoice_no        customer_id           gender               age       
Length:99457       Length:99457       Length:99457       Min.   :18.00  
Class :character   Class :character   Class :character   1st Qu.:30.00  
Mode  :character   Mode  :character   Mode  :character   Median :43.00  
Mean   :43.43  
3rd Qu.:56.00  
Max.   :69.00  

category            quantity         price         payment_method    
Length:99457       Min.   :1.000   Min.   :   5.23   Length:99457      
Class :character   1st Qu.:2.000   1st Qu.:  45.45   Class :character  
Mode  :character   Median :3.000   Median : 203.30   Mode  :character  
                   Mean   :3.003   Mean   : 689.26                     
                   3rd Qu.:4.000   3rd Qu.:1200.32                     
                   Max.   :5.000   Max.   :5250.00                     

invoice_date                    shopping_mall     
Min.   :2021-01-01 00:00:00.00   Length:99457      
1st Qu.:2021-07-19 00:00:00.00   Class :character  
Median :2022-02-05 00:00:00.00   Mode  :character  
Mean   :2022-02-04 02:46:59.77                     
3rd Qu.:2022-08-22 00:00:00.00                     
Max.   :2023-03-08 00:00:00.00 

str(data)
tibble [99,457 x 10] (S3: tbl_df/tbl/data.frame)
 $ invoice_no    : chr [1:99457] "I138884" "I317333" "I127801" "I173702" ...
 $ customer_id   : chr [1:99457] "C241288" "C111565" "C266599" "C988172" ...
 $ gender        : chr [1:99457] "Female" "Male" "Male" "Female" ...
 $ age           : num [1:99457] 28 21 20 66 53 28 49 32 69 60 ...
 $ category      : chr [1:99457] "Clothing" "Shoes" "Clothing" "Shoes" ...
 $ quantity      : num [1:99457] 5 3 1 5 4 5 1 2 3 2 ...
 $ price         : num [1:99457] 1500.4 1800.5 300.1 3000.8 60.6 ...
 $ payment_method: chr [1:99457] "Credit Card" "Debit Card" "Cash" "Credit Card" ...
 $ invoice_date  : POSIXct[1:99457], format: "2022-08-05" "2021-12-12" ...
 $ shopping_mall : chr [1:99457] "Kanyon" "Forum Istanbul" "Metrocity" "Metropol AVM" ...
 
install.packages("ggplot2")
library(ggplot2)
ggplot(data=data,aes(x=age,y=gender,color=gender))+
geom_point()+
labs(title="Relationship between Gender and Age",x="Age",y="Gender")+
theme_bw()

library(ggplot2)
ggplot(data=data,aes(x=category,y=quantity,fill=category))+
geom_bar(stat="identity")+
labs(title="Quantity of Products and Category",x="Category",y="Quantity")

library(ggplot2)

ggplot(data = df, aes(x = payment_method, y = price)) +
geom_violin() +
labs(title = "Distribution of Price by Payment Method",
x = "Payment Method", y = "Price")

ggplot(data=data,aes(x=shopping_mall,fill=category))+
geom_bar(position="stack")+
labs(title="Relationship between Product category and Shopping mall",x="Shopping mall",y="Category Of Products")+
theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(data = data, aes(x = category, y = age,fill = category)) +
geom_boxplot()

ggplot(data = data, aes(x = category, y = price)) + 
geom_boxplot()

