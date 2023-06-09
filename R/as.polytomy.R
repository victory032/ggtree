##' collapse binary tree to polytomy by applying 'fun' to 'feature'
##'
##'
##' @title as.polytomy
##' @param tree tree object, 'phylo' object only
##' @param feature selected feature
##' @param fun function to select nodes to collapse
##' @return polytomy tree
##' @author Guangchuang Yu
##' @importFrom ape di2multi
##' @importFrom treeio Ntip
##' @export
as.polytomy <- function(tree, feature, fun) {
    if (!is(tree, 'phylo')) {
        stop("currently only 'phylo' object is supported...")
    }

    df <- fortify(tree)
    phylo <- get.tree(tree)

    if (feature == 'node.label') {
        feat <- df$label[!df$isTip]
    } else if (feature == 'tip.label') {
        feat <- df$label[df$isTip]
    } else {
        feat <- df[[feature]]
    }

    idx <- which(fun(feat))
    if (feature == 'node.label') {
        nodes <- Ntip(phylo) + df$node[idx]
    } else {
        nodes <- df$node[idx]
    }
    edge_idx <- match(nodes, phylo$edge[,2])
    phylo$edge.length[edge_idx] <- 0
    poly_tree <- di2multi(phylo)
    ##
    ## map stats to poly_tree and update tree object
    ##
    return(poly_tree)
}
