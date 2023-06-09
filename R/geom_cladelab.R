##' annotate a clade with bar and text label or (image)
##' 
##' @title geom_cladelab
##' @param node selected node to annotate, when data and mapping is NULL, it is required.
##' @param label character, character to be showed, when data and mapping is NULL, it is required.
##' @param data data.frame, the data to be displayed in the annotation, defaults to NULL.
##' @param mapping Set of aesthetic mappings, defaults to NULL. The detail see the following explanation.
##' @param geom character, one of 'text', 'label', 'shadowtext', 'image' and 'phylopic', 
##' defaults to 'text', and the parameter see the Aesthetics For Specified Geom.
##' @param parse logical, whether parse label to emoji font, defaults to FALSE.
##' @param ... additional parameters, see also following section.
##'
##' additional parameters can refer the following parameters.
##'     \itemize{
##'        \item \code{offset} distance bar and tree, offset of bar and text from 
##'         the clade, defaults to 0.
##'        \item \code{offset.text} distance bar and text, offset of text from bar, 
##'         defaults to 0.
##'        \item \code{align} logical, whether align clade lab, defaults to FALSE.
##'        \item \code{extend} numeric, extend the length of bar, defaults to 0.
##'        \item \code{angle} numeric or 'auto', if angle is auto, the angle of text will 
##'         be calculated automatically, which is useful for the circular etc layout, defaults to 0.
##'        \item \code{horizontal} logical, whether set label to horizontal, defaults to TRUE.
##'        \item \code{barsize} the width of line, defaults to 0.5.
##'        \item \code{barcolour} the colour of line, defaults to 'black'.
##'        \item \code{fontsize} the size of text, defaults to 3.88.
##'        \item \code{textcolour} the colour of text, defaults to 'black'.
##'        \item \code{imagesize} the size of image, defaults to 0.05.
##'        \item \code{imagecolor} the colour of image, defaults to NULL, when
##'        geom="phylopic", it should be required.
##'     }
##' The parameters also can be set in mapping, when data is provided. Note: the barsize, barcolour,
##' fontsize, textcolour, imagesize and imagecolor should not be set in mapping (aesthetics). When
##' the color and size are not be set in mapping, user can modify them to adjust the attributes of
##' specified geom.
##'
##' @section Aesthetics For Specified Geom:
##' \code{geom_cladelab()} understands the following aesthetics for geom="text"(required
##' aesthetics are in bold):
##'     \itemize{
##'        \item \strong{\code{node}} selected node to hight light, it is required.
##'        \item \strong{\code{label}} labels to be shown, it is required.
##'        \item \code{colour} the colour of text, defaults to "black".
##'        \item \code{size} the size of text, defaults to 3.88.
##'        \item \code{angle} the angle of text, defaults to 0.
##'        \item \code{hjust} A numeric vector specifying horizontal justification, defaults to 0.
##'        \item \code{vjust} A numeric vector specifying vertical justification, defaults to 0.5.
##'        \item \code{alpha} the transparency of text, defaults to NA.
##'        \item \code{family} the family of text, defaults to 'sans'.
##'        \item \code{fontface} the font face of text, defaults to 1 (plain), others are  
##'         2 (bold), 3 (italic), 4 (bold.italic).
##'        \item \code{lineheight} The height of a line as a multiple of the size of text, defaults to 1.2 .
##'     }
##'  when the colour, size are not be set in mapping, and user want to modify the colour of text,
##'  they should use textcolour, fontsize to avoid the confusion with bar layer annotation.
##'
##' \code{geom_cladelab()} understands the following aesthethics for geom="label" (required
##' aesthetics are in bold):
##'     \itemize{
##'        \item \strong{\code{node}} selected node to hight light, it is required.
##'        \item \strong{\code{label}} labels to be shown, it is required.
##'        \item \code{colour} the colour of text, defaults to "black".
##'        \item \code{fill} the background colour of the label, defaults to "white".
##'        \item \code{size} the size of text, defaults to 3.88.
##'        \item \code{angle} the angle of text, defaults to 0.
##'        \item \code{hjust} A numeric vector specifying horizontal justification, defaults to 0.
##'        \item \code{vjust} A numeric vector specifying vertical justification, defaults to 0.5.
##'        \item \code{alpha} the transparency of text, defaults to NA.
##'        \item \code{family} the family of text, defaults to 'sans'.
##'        \item \code{fontface} the font face of text, defaults to 1 (plain), others are
##'         2 (bold), 3 (italic), 4 (bold.italic).
##'        \item \code{lineheight} The height of a line as a multiple of the size of text, defaults to 1.2 .
##'     }
##'  when the colour, size are not be set in mapping, and user want to modify the colour of text,
##'  they should use textcolour, fontsize to avoid the confusion with bar layer annotation.
##'
##' \code{geom_cladelab()} understands the following aesthethics for geom="shadowtext" (required
##' aesthetics are in bold):
##'     \itemize{
##'        \item \strong{\code{node}} selected node to hight light, it is required.
##'        \item \strong{\code{label}} labels to be shown, it is required.
##'        \item \code{colour} the colour of text, defaults to "black".
##'        \item \code{bg.colour} the background colour of text, defaults to 'black'.
##'        \item \code{bg.r} the width of background text, defaults to 0.1.
##'        \item \code{size} the size of text, defaults to 3.88.
##'        \item \code{angle} the angle of text, defaults to 0.
##'        \item \code{hjust} A numeric vector specifying horizontal justification, defaults to 0.
##'        \item \code{vjust} A numeric vector specifying vertical justification, defaults to 0.5.
##'        \item \code{alpha} the transparency of text, defaults to NA.
##'        \item \code{family} the family of text, defaults to 'sans'.
##'        \item \code{fontface} the font face of text, defaults to 1 (plain), others are
##'         2 (bold), 3 (italic), 4 (bold.italic).
##'        \item \code{lineheight} The height of a line as a multiple of the size of text, defaults to 1.2 .
##'     }
##'  when the colour, size are not be set in mapping, and user want to modify the colour of text,
##'  they should use textcolour, fontsize to avoid the confusion with bar layer annotation.
##'
##' \code{geom_cladelab()} understands the following aesthethics for geom="image" or geom="phylopic" (required
##' aesthetics are in bold):
##'     \itemize{
##'        \item \strong{\code{node}} selected node to hight light, it is required.
##'        \item \strong{\code{label}} labels to be shown, it is required.
##'        \item \strong{\code{image}} the image to be annotated, when geom="phylopic", 
##'         the uid of phylopic databases, it is required.
##'        \item \code{colour} the color of image, defaults to NULL.
##'        \item \code{size} the size of image, defaults to 0.05.
##'        \item \code{alpha} the alpha of image, defaults to 0.8.
##'     }
##'  when the colour, size are not be set in mapping, and user want to modify the colour of image,
##'  they should use imagecolour, imagesize to avoid the confusion with bar layer annotation.
##' @export
##' @examples
##' set.seed(2015-12-21)
##' tree <- rtree(30)
##' data <- data.frame(id=c(34, 56),
##'                    annote=c("another clade", "long clade names"),
##'                    image=c("7fb9bea8-e758-4986-afb2-95a2c3bf983d",
##'                            "0174801d-15a6-4668-bfe0-4c421fbe51e8"),
##'                    group=c("A", "B"),
##'                    offset=c(0.1, 0.1),
##'                    offset.text=c(0.1, 0.2))
##'
##' p <- ggtree(tree) + xlim(NA, 6)
##'
##' p + geom_cladelab(node=45, label="test label") +
##'     geom_cladelab(node=34, label="another clade")
##' p2 <- p + geom_cladelab(data=data,
##'                         mapping=aes(
##'                              node=id, 
##'                              label=annote, 
##'                              image=image,
##'                              color=group, 
##'                              offset=offset
##'                         ),
##'                         geom="shadowtext",
##'                         hjust=0.5,
##'                         align=TRUE,
##'                         horizontal=FALSE,
##'                         angle=90,
##'                         show.legend = FALSE
##'                        ) 
##' p2
geom_cladelab <- function(
                          node=NULL,
                          label=NULL,
                          data=NULL,
                          mapping=NULL,
                          geom="text",
                          parse=FALSE,
                          ...
                         ){
    params <- list(inherit.aes=FALSE,...)
    structure(
              list(
                  data=data,
                  mapping=mapping,
                  node=node,
                  label=label,
                  geom=geom,
                  parse=parse,
                  params=params
                  ),
              class="cladelab"
              )

}
