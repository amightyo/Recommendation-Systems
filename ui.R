library(shiny)
library(DT)

navbarPage(
  
  h4("Recommender Systems", align="center"),
  tabPanel(
    "Background",
    fluidPage(
      
      
      htmlOutput("background"),
      
      tags$img(src='freqbought.png', height=450,width=750),
      
      htmlOutput("background2"),
      includeMarkdown("D:/Harvard/Data-Driven Marketing/Week6Recommendations/rules.Rmd")
      
    )
  ),
  tabPanel(
    "Exercise 1: Association Rules",
    fluidPage(
      wellPanel("For an implementation of association rules, we use the", a(href = "https://cran.r-project.org/web/packages/arules/index.html", "[arules]"), "package.",p("We use data from *Instacart* (a company that provides a same-day grocery delivery service). The full dataset is located ", a(href = "https://tech.instacart.com/3-million-instacart-orders-open-sourced-d40d29ead6f2", "[here]"),". We use a subset of the data that consists of 50,000 transactions. First, we read in the data, and check the format.")),
      wellPanel("insta.raw <- readLines('./instacart_transactions.csv')",p("head(insta.raw)")
),
      checkboxInput("show_rownames",
                    label = "Show rownames?"),
      DTOutput("insta.raw"),
      wellPanel("Each of the 50,000 transactions is a string of product ids, and insta.raw is a vector of these strings. For example, the first transaction insta.raw[1] is a string describing 10 products, the second transaction insta.raw[2] is a string describing 3 products, and so forth.",p("We transform the data into a *transactions* object, which is used by arules. For this, we use strsplit to break each transaction into a vector of strings, one for each product id.") 
                )
    )
  )
  ,
  tabPanel(
    "Exercise 2: Content-Based Recommender Systems",
    fluidPage(

    )
  ),
  tabPanel(
    "Exercise 3: Collaborative Filtering",
    fluidPage(

    )
  ),
  tabPanel(
    "Exercise 4: Matrix Factorization",
    fluidPage(

    )
  ),
  tabPanel(
    "Exercise 5: Profit Maximization",
    fluidPage(

    )
  ),
  collapsible = TRUE
  
)




