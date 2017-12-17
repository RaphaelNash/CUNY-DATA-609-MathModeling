
http://stackoverflow.com/questions/9317923/find-distance-of-route-from-get-shortest-paths

## reproducible code:
df2 = rbind(c(234,235,21.6),
c(234,326,11.0),
c(235,241,14.5),
c(326,241,8.2),
c(241,245,15.3),
c(234,245,38.46))

df2 = as.data.frame(df2)
names(df2) = c("start_id","end_id","newcost")

require(igraph)

g2 <- graph.data.frame(df2, directed=FALSE)

class(g2)

print(g2, e=TRUE, v=TRUE)

# compute the min distances from '234' to all other vertices
tmp3 <- shortest.paths(g2,v='234',weights=E(g2)$newcost)

# print min distance from '234' to '245'
tmp3[1, which(V(g2)$name == '245')]

tkplot(g2)

