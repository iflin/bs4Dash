% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dashboardNavbar.R
\name{bs4DropdownMenu}
\alias{bs4DropdownMenu}
\title{Create a Boostrap 4 dashboard dropdown menu}
\usage{
bs4DropdownMenu(..., show = FALSE, labelText = NULL, src = NULL,
  status = c("primary", "warning", "danger", "info", "success"),
  menuIcon = "bell", align = "right")
}
\arguments{
\item{...}{Slot for \link{bs4DropdownMenuItem}.}

\item{show}{Whether to start with the dropdown open. FALSE by default.}

\item{labelText}{Dropdown label text.}

\item{src}{Dropdown link to an external ressource.}

\item{status}{Dropdown menu status. "primary", "success", "warning", "danger" or "info".}

\item{menuIcon}{Fontawesome icon (default = "bell")}

\item{align}{Menu alignment (default = "right")}
}
\description{
Build an adminLTE3 dashboard dropdown menu
}
\examples{
if(interactive()){
 library(shiny)
 library(bs4Dash)
 
 shiny::shinyApp(
   ui = bs4DashPage(
     navbar = bs4DashNavbar(
      rightUi = bs4DropdownMenu(
       show = TRUE,
       labelText = "!",
       status = "danger",
       src = "http://www.google.fr",
       bs4DropdownMenuItem(
        text = "message 1",
        date = "today"
       ),
       bs4DropdownMenuItem(
        text = "message 2",
        date = "yesterday"
       )
      )
     ),
     sidebar = bs4DashSidebar(),
     controlbar = bs4DashControlbar(),
     footer = bs4DashFooter(),
     title = "test",
     body = bs4DashBody()
   ),
   server = function(input, output) {}
 )
}

}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
