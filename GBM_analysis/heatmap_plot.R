
#heatmap plot
library(pheatmap)

data <- read.table("lac.txt",sep='\t',header=TRUE)
rownames(data)<-data$module
data<-data[,-1]
label <-c(rep('Lac colonization',3))
label<-data.frame(label)
rownames(label)<-colnames(data)
pdf('lac_c.pdf' ,width = 5, height = 6)
pheatmap(data, annotation_col = label,cluster_cols=FALSE,cluster_rows=FALSE,scale='row')
dev.off()


data <- read.table("asd.txt",sep='\t',header=TRUE)
rownames(data)<-data$module
data<-data[,-1]
label <-c(rep('ASD symptom',3))
label<-data.frame(label)
rownames(label)<-colnames(data)
pdf('asd_s.pdf' ,width = 5, height = 6)
pheatmap(data, annotation_col = label,cluster_cols=FALSE,cluster_rows=FALSE,scale='row')
dev.off()
