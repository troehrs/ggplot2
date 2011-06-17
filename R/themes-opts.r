#' themes_opts
#' 
#' @name themes_opts
#'
#' This page demonstrates the usuage of themes and options
#' which polish your plots for publication. Examples show 
#' how to change axis, legend, panel and faceting attributes.
#' 
#' @examples
#' 
#' # Scatter plot of gas milage by vehicle weight
#' p <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()
#' # Calculate slope and intercept of line of best fit
#' coef(lm(mpg ~ wt, data = mtcars))
#' p + geom_abline(intercept = 37, slope = -5) 
#' # Calculate correlation coefficient
#' with(mtcars, cor(wt,mpg, use = "everything", method = "pearson"))
#' #annotate the plot
#' p + geom_abline(intercept = 37, slope = -5) + 
#' geom_text(aes(4.5, 30, label = "Pearson-R = -.87"))
#'
#' # Change the axis labels
#' # Original plot
#' p
#' p + xlab("Vehicle Weight") + ylab("Miles per Gallon")
#' # Or
#' p + labs(x = "Vehicle Weight", y = "Miles per Gallon")
#' 
#' # Add a title to the plot
#' p + opts(title = "Vehicle Weight-Gas Mileage Relationship")
#' # Change title appearance
#' p <- p + opts(title = "Vehicle Weight-Gas Mileage Relationship")
#' p + opts(plot.title = theme_text(size = 20))
#' p + opts(plot.title = theme_text(size = 20, colour = "Blue"))
#'
#' # Changing plot look with themes
#' m <- ggplot(movies, aes(x = rating)) + geom_histogram()
#' #default is theme_grey()
#' m 
#' # Compare with
#' m + theme_bw()
#' 
#' # Manipulate Axis Attributes
#' m + opts(axis.line = theme_segment())
#' m + opts(axis.line = theme_segment(colour = "red", linetype = "dotted"))
#' m + opts(axis.text.x = theme_text(colour = "blue"))
#' m + opts(axis.text.y = theme_blank())
#' m + opts(axis.ticks = theme_segment(size = 2))
#' m + opts(axis.title.y = theme_text(size = 20, angle = 90))
#' m + opts(axis.title.x = theme_blank())
#' m + opts(axis.ticks.length = unit(.85, "cm"))
#'
#' # Legend Attributes
#' z <- ggplot(mtcars, aes(wt, mpg, colour = factor(cyl))) + geom_point()
#' z
#' z + opts(legend.position = "none")
#' z + opts(legend.position = "bottom")
#  # Add a border to the whole legend
#' z + opts(legend.background = theme_rect())
#' # Or to just the keys
#' z + opts(legend.key = theme_rect())
#' z + opts(legend.key = theme_rect(fill = "yellow"))
#' z + opts(legend.key.size = unit(2.5, "cm"))
#' z + opts(legend.text = theme_text(size = 20, colour = "red", angle = 45))
#' z + opts(legend.title = theme_text(face = "italic"))
#'
#' # To change the title of the legend use the name argument
#' # in one of the scale options
#' z + scale_colour_brewer(name = "My Legend")
#' z + scale_colour_grey(name = "Number of \nCylinders")
#'
#' # Panel and Plot Attributes
#' z + opts(panel.background = theme_rect())
#' z + opts(panel.background = theme_rect(fill = "black"))
#' z + opts(panel.border = theme_rect(linetype = "dashed"))
#' z + opts(panel.grid.major = theme_line(colour = "blue"))
#' z + opts(panel.grid.minor = theme_line(colour = "red", linetype = "dotted"))
#' z + opts(panel.grid.major = theme_line(size = 2))
#' z + opts(plot.background = theme_rect())
#' z + opts(plot.background = theme_rect(fill = "grey"))
#'
#' # Faceting Attributes
#' k <- ggplot(diamonds, aes(carat, ..density..)) +  geom_histogram(binwidth = 0.2) +
#' facet_grid(. ~ cut)
#' k + opts(strip.background = theme_rect(colour = "purple", fill = "pink", size = 3, linetype = "dashed"))
#' k + opts(strip.text.x = theme_text(colour = "red", angle = 45, size = 10, hjust = 0.5, vjust = 0.5))
#' k + opts(panel.margin = unit(5, "lines"))
#' k + opts(panel.margin = unit(0, "lines"))