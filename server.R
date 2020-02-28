library(shiny)
library(DT)
library(tidyverse)

insta.raw <- read_csv('D:/Harvard/Data-Driven Marketing/Week6Recommendations/data/instacart_transactions.csv')

function(input, output, session) {
  output$insta.raw <- renderDT({
    insta.raw %>% 
      datatable(rownames = input$show_rownames)
  })
  
  output$background <- renderText({
    "In the age of internet retailing, there are many more items available than can be shown to a customer at once; this is the <i>long tail effect,</i> with a small number of very popular products, and a very large number of products that are each popular to only a few customers. To solve the question of what to show to a customer, businesses make use of <b>recommender systems</b>. By helping a customer find products that they really like but didn't know about, a successful recommender system can help in two distinct ways: <br><br>

1) Increasing customer engagement and satisfaction, and therefore lowering customer churn <br>
2) Increasing profit <br><br>

In this exercise, we will explore different kinds of recommender systems, and understand the situations in which each is most appropriate. <br><br>
    
<h4>Shopping Basket Recommendations: 'Customers who Buy X also Buy Y')</h4><br>

First, we consider short-term recommendations, adopting the approach of *association rules*. Association rules are related to the 'item similarities' method discussed in this week's materials, which considers the co-occurrence of pairs of items, for example in a shopping basket, relative to what would be expected by chance. <br><br>

Consider the situation below, where Amazon tries to sell additional items, based on the items in your cart. This is important to get right in a business context."
  })
  
  output$background2 <- renderText({
    "The relevant data is about the items that occur together in historical transactions. For example, do hot dogs get purchased together with hot dog buns? Association rules are relationships between individual items and between sets of items. <br><br>

Consider these two rules:
"
  })
}


